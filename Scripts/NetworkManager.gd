extends Node

const PORT = 3333
const SERVER_MAX_PLAYERS = 16
var SERVER_IP = "127.0.0.1"

var player_name
var players = []

signal player_list_changed()
signal connection_succeeded()
signal connection_fail()
signal player_disconnected(id)
signal server_disconnected()

func _ready():
	get_tree().connect("connected_to_server", self, "_connected_ok")
	get_tree().connect("connection_failed", self, "_connected_fail")
	get_tree().connect("server_disconnected", self, "_server_disconnected")
	get_tree().connect("network_peer_disconnected", self, "_on_player_disconnected")
	pass

func _on_player_disconnected(id):
	for p in players:
		if p.id == id:
			players.remove(players.find(p))
	rpc("update_player_list", players)
	emit_signal("player_disconnected", id)
	pass

func _server_disconnected():
	emit_signal("server_disconnected")
	pass

func _connected_fail():
	print("FAILED TO CONNECT")
	emit_signal("connection_fail")
	pass

func _connected_ok():
	rpc("register_player", get_tree().get_network_unique_id(), player_name)
	register_player(get_tree().get_network_unique_id(), player_name)
	emit_signal("connection_succeeded")
	pass

func is_host():
	if get_tree().get_network_unique_id() == 1:
		return true
	else:
		return false
	pass

sync func update_player_list(players_list):
	players = players_list
	emit_signal("player_list_changed")
	pass

remote func register_player(id, name):
	var player = {}
	player.id = id
	player.name = name
	if is_host():
		if id != 1:
			for p in players:
				rpc_id(id, "register_player", p.id, p.name)
		players.append(player)
		emit_signal("player_list_changed")
		rpc("update_player_list", players)
	pass

func refuse_connections():
	get_tree().refuse_new_network_connections = true
	pass

func host_server(player_info):
	var host = NetworkedMultiplayerENet.new()
	host.create_server(PORT, SERVER_MAX_PLAYERS)
	get_tree().set_network_peer(host)
	player_name = player_info
	_connected_ok()
	pass

func connect_player(player_info):
	var host = NetworkedMultiplayerENet.new()
	host.create_client(SERVER_IP, PORT)
	get_tree().set_network_peer(host)
	player_name = player_info
	pass