extends Node

const WALK_SPEED = 80
const RUN_SPEED = 130
var velocity = Vector2()
var look_direction = Vector2()

onready var k_body = get_node("PlayerBody")
onready var sprite = get_node("PlayerBody/Sprite")
var bullet = preload("res://Scenes/Bullet.tscn")
onready var camera = get_node("PlayerBody/Pivot/CameraOffset/Camera2D")

var speed
var health = 5
enum STATES { IDLE = 0, MOVE = 1 }
var state = IDLE
slave var slave_state
enum face {FRONT, BACK, LEFT, RIGHT}
var last_look_direction = Vector2()

slave var slave_position = Vector2()

func _change_state(new_state):
	match new_state:
		IDLE:
			sprite.play('idle')
		MOVE:
			if look_direction == Vector2(1,0) or look_direction == Vector2(1,1) or look_direction == Vector2(1,-1): 
				sprite.play('rightwalking')
			if look_direction == Vector2(-1,0) or look_direction == Vector2(-1,1) or look_direction == Vector2(-1,-1):
				sprite.play('leftwalking')
			if look_direction == Vector2(0,1):
				sprite.play('frontwalking')
			if look_direction == Vector2(0,-1):
				sprite.play('backwalking')
			last_look_direction = look_direction
	state = new_state

sync func fireball(pos, dir, info):
	var b = bullet.instance()
	b.owner_body = k_body
	b.set_direction(dir)
	b.get_node("KinematicBody2D").position = pos
	b.dmg_info["dmg"] = 1
	b.dmg_info["player_name"] = NetworkManager.player_name
	b.dmg_info["camera"] = camera
	get_tree().get_root().add_child(b)
	pass

func take_damage(dmg_info):
	damage_animation()
	health -= dmg_info["dmg"]
	if health <= 0:
		dmg_info["camera"].make_current()
		self.queue_free()
	pass

func _ready():
	if is_network_master():
		camera.make_current()
	pass

func _process(delta):
	if is_network_master():
		var input_direction = get_input_direction()
		update_look_direction(input_direction)
		if (state == IDLE and input_direction) or (look_direction != last_look_direction and input_direction):
			_change_state(MOVE)
			rset_unreliable("slave_state", MOVE)
		elif state == MOVE:
			if not input_direction:
				_change_state(IDLE)
				rset_unreliable("slave_state", IDLE)
		move(input_direction)
		rset_unreliable("slave_position", k_body.position)
	else:
		_change_state(slave_state)
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
	if Input.is_action_just_pressed("click"):
		var bullet_direction = (k_body.get_global_mouse_position() - k_body.position).normalized()
		rpc("fireball", k_body.position, bullet_direction)
	speed = RUN_SPEED if Input.is_action_pressed("run") else  WALK_SPEED
	velocity =  input_direction.normalized() * speed
	k_body.move_and_slide(velocity)
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