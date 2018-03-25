extends Control

onready var name_line_edit = get_node("Panel/Main/NameLineEdit")
onready var settings_panel = get_node("Panel/Main/SettingsPanel")
onready var main_panel = get_node("Panel/Main")
onready var lobby_panel = get_node("Panel/Lobby")
onready var lobby_player_list = get_node("Panel/Lobby/LobbyPlayersList")
onready var error_popup = get_node("ErrorPopup")

func _ready():
	NetworkManager.connect("connection_succeeded", self, "connection_succeeded")
	NetworkManager.connect("player_list_changed", self, "update_lobby")
	NetworkManager.connect("connection_fail", self, "connection_failed")
	NetworkManager.connect("server_disconnected", self, "server_disconnected")
	pass

func update_lobby():
	lobby_player_list.clear()
	for p in NetworkManager.players:
		lobby_player_list.add_item(p.name)
	pass

func server_disconnected():
	error_popup.get_node("ErrorLabel").text = "Disconnected from server!"
	error_popup.popup_centered()
	pass

func connection_failed():
	error_popup.get_node("ErrorLabel").text = "Connection Failed!"
	error_popup.popup_centered()
	pass

func connection_succeeded():
	main_panel.hide()
	lobby_panel.show()
	if NetworkManager.is_host():
		lobby_panel.get_node("StartGameButton").show()
	else:
		lobby_panel.get_node("WaitingPlayersLabel").show()
	pass

func check_empty_name():
	if name_line_edit.text != "":		
		return true
	else:
		error_popup.popup_centered()
		return false
	pass

func _on_SettingsButton_pressed():
	if settings_panel.is_visible_in_tree():
		settings_panel.hide()
	else:
		settings_panel.show()
		get_node("Panel/Main/SettingsPanel/ServerIpLineEdit").text = NetworkManager.SERVER_IP
	pass

func _on_SetServerIPButton_pressed():
	NetworkManager.SERVER_IP = get_node("Panel/Main/SettingsPanel/ServerIpLineEdit").text
	pass 

func _on_ConnectButton_pressed():
	if check_empty_name():
		NetworkManager.connect_player(name_line_edit.text)
	pass

func _on_HostButton_pressed():
	if check_empty_name():
		NetworkManager.host_server(name_line_edit.text)
	pass

func _on_OkButton_pressed():
	error_popup.hide()
	pass