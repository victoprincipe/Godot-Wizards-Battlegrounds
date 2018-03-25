extends Node

onready var game_manager = get_node("GameManager")

var players_ready = 0

sync func level_loaded():
	players_ready += 1
	if players_ready == NetworkManager.players.size():
		spawn_player()
	pass

func spawn_player():
	game_manager.spawn_players(5)
	pass

func _ready():
	rpc("level_loaded")
	pass