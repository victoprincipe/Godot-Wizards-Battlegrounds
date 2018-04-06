extends Node

onready var player_scene = preload("res://Scenes/Player.tscn")

remote func spawn_player(id, position):
	var p 
	p = player_scene.instance()
	p.set_network_master(id)
	p.name = str(id)
	p.get_node("PlayerBody").global_position = position
	get_tree().get_root().add_child(p)
	pass

func on_player_disconnect(id):
	for p in get_tree().get_root().get_children():
		if p.name == str(id):
			p.queue_free()
	pass

func _ready():
	NetworkManager.connect("player_disconnected", self, "on_player_disconnect")
	pass