extends Node

onready var k_body = get_node("KinematicBody2D")
var owner_body
const speed = 100
var velocity = Vector2()

func _ready():
	velocity = get_viewport().get_mouse_position().normalized() * speed
	pass
	
func _process(delta):
	#printerr(get_viewport().get_mouse_position())
	k_body.move_and_slide(velocity)
	pass

func _on_Area2D_body_entered(body):
	if body.is_in_group("Player") and body != owner_body:
		if body.get_owner().has_method("take_damage"):
			body.get_owner().take_damage(1)
			self.queue_free()
	pass