extends Node

const WALK_SPEED = 80
const RUN_SPEED = 130
var velocity = Vector2()
var look_direction = Vector2()

onready var k_body = get_node("PlayerBody")
onready var sprite = get_node("PlayerBody/Sprite")
var bullet = preload("res://Scenes/Bullet.tscn")
onready var camera = get_node("PlayerBody/Pivot/CameraOffset/Camera2D")
onready var health_label = get_node("CanvasLayer/PlayerGUI/HPLabel")
onready var stamina_label = get_node("CanvasLayer/PlayerGUI/StaminaLabel")
onready var player_name_label = get_node("PlayerBody/PlayerNameLabel")
onready var player_collision = get_node("PlayerBody/CollisionShape2D")
onready var player_info = get_node("CanvasLayer/PlayerGUI/PlayerInfo")

var speed
var health = 100
var stamina = 100
var stamina_regen
var stamina_timer = 0
enum STATES { IDLE = 0, MOVE_RIGHT = 1, MOVE_LEFT = 2, MOVE_FRONT = 3, MOVE_BACK = 4 }
var state = IDLE
slave var slave_state = STATES.IDLE
enum face {FRONT, BACK, LEFT, RIGHT}
var last_look_direction = Vector2()
export var fire_rate = 0.8
var fire_rate_timer = 0
var min_dmg = 10
var max_dmg = 20

slave var slave_player_name = "player"
slave var slave_position = Vector2()

func _change_state(new_state):
	match new_state:
		IDLE:
			sprite.play('idle')
		MOVE_RIGHT:
			sprite.play('rightwalking')
		MOVE_LEFT:
			sprite.play('leftwalking')
		MOVE_FRONT:
			sprite.play('frontwalking')
		MOVE_BACK:
			sprite.play('backwalking')
		#last_look_direction = look_direction
	state = new_state

sync func fireball(pos, dir, info):
	var b = bullet.instance()
	b.owner_body = k_body
	b.set_direction(dir)
	b.get_node("KinematicBody2D").position = pos
	b.dmg_info["dmg"] = (randi() % (max_dmg - min_dmg)) + min_dmg
	b.dmg_info["player_name"] = NetworkManager.player_name
	b.dmg_info["camera"] = camera
	get_tree().get_root().add_child(b)
	pass

func take_damage(dmg_info):
	damage_animation()
	health -= dmg_info["dmg"]
	if health <= 0:
		k_body.hide()
		player_collision.disabled = true
		if is_network_master():
			player_info.text = "YOU DIED!"
			player_info.show()
	health_label.text = "HP: " + str(clamp(health, 0, 100))
	pass

func _ready():
	if is_network_master():
		camera.make_current()
		health_label.text = "HP: " + str(health)
		stamina_label.text = "STAMINA: " + str(stamina)
		player_name_label.text = NetworkManager.player_name
	else:
		health_label.hide()
		stamina_label.hide()
	pass

func _process(delta):
	if is_network_master():
		rset("slave_player_name", NetworkManager.player_name)
		stamina_timer += delta
		fire_rate_timer += delta
		if health > 0:
			shoot()
			var input_direction = get_input_direction()
			update_look_direction(input_direction)
			if (state == IDLE and input_direction) or (look_direction != last_look_direction and input_direction):
				if look_direction == Vector2(1,0) or look_direction == Vector2(1,1) or look_direction == Vector2(1,-1): 
					_change_state(MOVE_RIGHT)
					rset_unreliable("slave_state", MOVE_RIGHT)
				if look_direction == Vector2(-1,0) or look_direction == Vector2(-1,1) or look_direction == Vector2(-1,-1):
					_change_state(MOVE_LEFT)
					rset_unreliable("slave_state", MOVE_LEFT)
				if look_direction == Vector2(0,1):
					_change_state(MOVE_FRONT)
					rset_unreliable("slave_state", MOVE_FRONT)
				if look_direction == Vector2(0,-1):
					_change_state(MOVE_BACK)
					rset_unreliable("slave_state", MOVE_BACK)
				last_look_direction = look_direction
			elif state == MOVE_BACK or state == MOVE_LEFT or state == MOVE_FRONT or state == MOVE_RIGHT:
				if not input_direction:
					_change_state(IDLE)
					rset_unreliable("slave_state", IDLE)
			move(input_direction)
			rset_unreliable("slave_position", k_body.position)
	else:
		_change_state(slave_state)
		player_name_label.text = slave_player_name
		k_body.position = slave_position
	pass


func get_input_direction():
	var input_direction = Vector2()
	input_direction.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	input_direction.y = int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))
	return input_direction
	
func update_look_direction(input_direction):
	if not input_direction:
		return
	look_direction = input_direction
	pass

func move(input_direction):
	speed = WALK_SPEED
	if Input.is_action_pressed("run") and stamina > 0:
		stamina_regen = -10
		speed = RUN_SPEED
	if stamina_timer >= 1:
		stamina = clamp(stamina + stamina_regen, 0, 100)
		stamina_timer = 0
	stamina_regen = 5
	velocity =  input_direction.normalized() * speed
	k_body.move_and_slide(velocity)
	stamina_label.text = "STAMINA: " + str(stamina)
	pass

func shoot():
	if Input.is_action_just_pressed("click") && fire_rate_timer >= fire_rate:
		var dmg_info = { "dmg" : 1, "player_name":NetworkManager.player_name, "camera": camera }
		var bullet_direction = (k_body.get_global_mouse_position() - k_body.position).normalized()
		fire_rate_timer = 0
		rpc("fireball", k_body.position, bullet_direction, dmg_info)
	pass
	
func damage_animation():
	var color = Color(1.0, 1.0, 1.0, 1.0)
	var normal_color = Color(1.0, 1.0, 1.0, 1.0)
	var damage_color = Color(0.8, 0.4, 0.4, 0.8)
	var tempo = 0.5
	var conta_tempo = 0.0
	
	while conta_tempo <= tempo:
		color = color.linear_interpolate(damage_color, conta_tempo)
		sprite.self_modulate = color
		conta_tempo += get_process_delta_time()
		yield(get_tree(), "idle_frame")
	conta_tempo = 0.0
	while conta_tempo <= tempo:
		color = color.linear_interpolate(normal_color, conta_tempo)
		sprite.self_modulate = color
		conta_tempo += get_process_delta_time()
		yield(get_tree(), "idle_frame")
	conta_tempo = 0.0
	pass