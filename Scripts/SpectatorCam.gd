extends Camera2D

var k_body

func _process(delta):
	if(k_body):
		position = k_body.position
	pass
