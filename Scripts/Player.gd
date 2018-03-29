extends Node

onready var k_body = get_node("PlayerBody")
var bullet = preload("res://Scenes/Bullet.tscn")

var speed = 80

slave var slave_position = Vector2()

sync func fireball(pos):
	var b = bullet.instance()
	b.get_node("KinematicBody2D").position = pos
	get_tree().get_root().add_child(b)
	pass

func _ready():
	pass

func _process(delta):
	if is_network_master():
		var velocity = Vector2(0, 0)
		if Input.is_action_pressed("ui_up"):
			velocity.y = -speed
		if Input.is_action_pressed("ui_down"):
			velocity.y = speed
		if Input.is_action_pressed("ui_right"):
			velocity.x = speed
		if Input.is_action_pressed("ui_left"):
			velocity.x = -speed
		if Input.is_action_just_pressed("ui_accept"):
			rpc("fireball", k_body.position)
		k_body.move_and_slide(velocity)
		rset_unreliable("slave_position", k_body.position)
	else:
		k_body.position = slave_position
	pass
