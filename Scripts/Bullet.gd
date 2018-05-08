extends Node

onready var k_body = get_node("KinematicBody2D")
var owner_body
const speed = 400
var velocity = Vector2()
var direction

var dmg_info = {
	"player_name" : "player_name",
	"dmg" : 1,
	"camera" : null
	}

func _ready():
	velocity = direction * speed
	k_body.rotation = direction.angle()
	pass
	
func _process(delta):
	#printerr(get_viewport().get_mouse_position())
	k_body.move_and_slide(velocity)
	pass

func _on_Area2D_body_entered(body):
	if body.is_in_group("Player") and body != owner_body:
		if body.get_owner().has_method("take_damage"):
			body.get_owner().take_damage(dmg_info)
			self.queue_free()
	pass

func set_direction(dir):
	direction = dir
	pass