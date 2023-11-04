extends Area2D

func _on_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	Global.sensor_R = 1


func _on_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	Global.sensor_R = 0
