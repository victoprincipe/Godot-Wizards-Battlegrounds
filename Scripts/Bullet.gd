extends Node

onready var k_body = get_node("KinematicBody2D")
const speed = 450

func _ready():
	pass
	
func _process(delta):
	k_body.move_and_slide(Vector2(speed, 0))
	pass