extends Node

onready var k_body = get_node("KinematicBody2D")
const speed = 100

func _ready():
	pass
	
func _process(delta):
	k_body.move_and_slide(Vector2(speed, 0))
	pass

func _on_Area2D_body_entered(body):
	print(body.get_parent().name)
	pass


func _on_Area2D_body_exited(body):
	print(body.get_parent().name)
	pass
