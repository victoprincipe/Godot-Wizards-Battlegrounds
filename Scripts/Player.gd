extends Node

onready var k_body = get_node("PlayerBody")

var speed = 30

slave var slave_position = Vector2()

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
		k_body.move_and_slide(velocity)
		rset_unreliable("slave_position", k_body.global_position)
	else:
		k_body.position = slave_position
	pass
