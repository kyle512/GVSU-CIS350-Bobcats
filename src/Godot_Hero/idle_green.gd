
extends Area2D


var animp = null

func _ready(): animp = $AnimationPlayer
var sensor_G = 0

func _process(delta):

	if sensor_G == 1:
		if Input.is_action_pressed("greenButtona"):
			if Input.is_action_pressed("Space"):
				animp.play("goodGreen")

	if sensor_G == 0:
		if Input.is_action_just_pressed("greenButtona"):
			animp.play("badGreen")



func _on_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	Global.sensor_G = 1
	sensor_G = 1


func _on_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	Global.sensor_G = 0
	sensor_G = 0
