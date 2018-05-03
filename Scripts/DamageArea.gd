extends Node2D

onready var damage_timer = get_node("Timer")
export var area_time = 300
export var damage = 0
export var damage_tick_time = 0 
var timer = 0
var initial_scale 
var scale_by_time
var damageable_players = []

func _ready():
	damage_timer.wait_time = damage_tick_time
	damage_timer.one_shot = false
	damage_timer.start()
	initial_scale = scale.x
	scale_by_time = (initial_scale / area_time)
	pass

func _process(delta):
	timer += delta
	if scale.x > 0:
		scale = Vector2(initial_scale - (scale_by_time * timer), initial_scale - (scale_by_time * timer))
	pass

func _on_Area2D_body_entered(body):
	if damageable_players.has(body):
		damageable_players.remove(damageable_players.find(body))
	pass


func _on_DamageArea_body_exited(body):
	damageable_players.append(body)
	pass


func _on_Timer_timeout():
	for p in damageable_players:
		if p.get_owner().has_method("take_damage"):
			p.get_owner().take_damage(damage)
	pass 
