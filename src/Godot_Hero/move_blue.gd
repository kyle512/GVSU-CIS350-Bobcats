extends Area2D

var sensor = 0

func _process(delta):
	position.y += Global.note_speed * delta
	
	if position.y > 960:
		queue_free()
		Global.score -= 50
		
	if sensor == 1:
		if Global.sensor_B == 1:
			if Global.but_press_B == 1:
				if Input.is_action_just_pressed("Space"):
					queue_free()
					Global.score += 100
	elif sensor == 0:
		if Global.sensor_B == 0:
			if Global.but_press_B == 1:
				if Input.is_action_just_pressed("Space"):
					Global.score -= 50


func _on_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	sensor = 1


func _on_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	sensor = 0
