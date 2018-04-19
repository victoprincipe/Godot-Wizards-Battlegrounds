extends Node

onready var host_time_to_start = 3
slave var time_to_start = 0
slave var has_started = false
var spawn_position = 0
var lobby_positions = []

onready var game_manager = get_node("GameManager")

sync func level_loaded(id):
	if not has_started and spawn_position <= lobby_positions.size():
		game_manager.spawn_player(id, lobby_positions[spawn_position].position)
		spawn_position += 1
	pass

func wait_for_players_load():
	while not has_started:
		if NetworkManager.is_host() and host_time_to_start >= 1:
			host_time_to_start -= get_process_delta_time()			
			rset("time_to_start", host_time_to_start)
		if NetworkManager.is_host() and host_time_to_start <= 1:
			has_started = true 
			rpc("has_started", has_started)
		yield(get_tree(), "idle_frame")
	pass

func _ready():
	lobby_positions = get_node("Positions/LobbySpawnPositions").get_children()
	rpc("level_loaded", get_tree().get_network_unique_id())
	if NetworkManager.is_host():
		wait_for_players_load()
	pass