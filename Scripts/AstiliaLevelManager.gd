extends Node

onready var host_time_to_start = 3
slave var time_to_start = 0
slave var has_started = false
var spawn_position = 0
var lobby_positions = []
var loaded_players = []
var alive_players

onready var game_manager = get_node("GameManager")

remote func level_loaded(id):
	loaded_players.append(id)
	if loaded_players.size() == NetworkManager.players.size():
		start_match()
	pass

func start_match():
	for i in range(loaded_players.size()):
		rpc("spawn_players", loaded_players[i], lobby_positions[i].global_position)
	pass
	
sync func spawn_players(id, position):
	game_manager.spawn_player(id, position)
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
	if NetworkManager.is_host():
		loaded_players.append(get_tree().get_network_unique_id())
		wait_for_players_load()
	if not NetworkManager.is_host():
		rpc_id(1, "level_loaded", get_tree().get_network_unique_id())
	pass