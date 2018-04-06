extends Node

var time_to_start = 50
var has_started = false
var spawn_position = 0
var lobby_positions = []

onready var game_manager = get_node("GameManager")

sync func level_loaded():
	if not has_started and spawn_position <= lobby_positions.size():
		game_manager.spawn_player(get_tree().get_network_unique_id(), lobby_positions[spawn_position].position)
		spawn_position += 1
	pass

func _ready():
	lobby_positions = get_node("Positions/LobbySpawnPositions").get_children()
	rpc("level_loaded")
	pass