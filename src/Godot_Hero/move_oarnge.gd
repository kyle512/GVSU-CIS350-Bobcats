extends Area2D

var speed = 100
var sensor = 0


func _process(delta):
	position.y += speed * delta
	
	if position.y > 960:
		queue_free()
		
	if sensor == 1:
		if Global.sensor_O == 1:
			if Global.but_press_O == 1:
				queue_free()


func _on_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	sensor = 1


func _on_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	sensor = 0
