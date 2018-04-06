extends Node

const WALK_SPEED = 60
const RUN_SPEED = 100
var velocity = Vector2()
var look_direction = Vector2()

onready var k_body = get_node("PlayerBody")
var bullet = preload("res://Scenes/Bullet.tscn")

var speed
var health = 5

slave var slave_position = Vector2()

sync func fireball(pos):
	var b = bullet.instance()
	b.owner_body = k_body
	b.get_node("KinematicBody2D").position = pos
	get_tree().get_root().add_child(b)
	pass

func take_damage(dmg):
	health -= dmg
	if health <= 0:
		self.queue_free()
	pass

func _ready():
	pass

func _process(delta):
	if is_network_master():
		
		var input_direction = get_input_direction()
		update_look_direction(input_direction)
		
		move(input_direction)
		rset_unreliable("slave_position", k_body.position)
	else:
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
	printerr(input_direction)
	pass
	
func move(input_direction):
	speed = RUN_SPEED if Input.is_action_pressed("run") else  WALK_SPEED
	velocity =  input_direction.normalized() * speed
	k_body.move_and_slide(velocity)
	pass