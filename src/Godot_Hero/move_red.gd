extends Area2D


var sensor = 0


func _process(delta):
	position.y += Global.note_speed * delta
	
	if position.y > 900:
		queue_free()
		Global.miss_note += 1
		Global.streak = 0
		
	if sensor == 1:
		if Global.sensor_R == 1:
			if Global.but_press_R == 1:
				if Input.is_action_just_pressed("Space"):
					queue_free()
					Global.score += 5 * Global.mult
					Global.streak += 1
					if(Global.miss_note > 1):
						Global.miss_note -= 2
	elif sensor == 0:
		if Global.sensor_R == 0:
			if Global.but_press_R == 1:
				if Input.is_action_just_pressed("Space"):
					Global.miss_note += 1
					Global.streak = 0


func _on_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	sensor = 1


func _on_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	sensor = 0
