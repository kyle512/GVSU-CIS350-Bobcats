
extends Area2D


var animp = null

func _ready(): animp = $AnimationPlayer
var sensor_B = 0

func _process(delta):

	if sensor_B == 1:
		if Input.is_action_pressed("blueButton"):
			if Input.is_action_pressed("Space"):
				animp.play("goodBlue")

	if sensor_B == 0:
		if Input.is_action_just_pressed("blueButton"):
			animp.play("badBlue")



func _on_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	Global.sensor_B = 1
	sensor_B = 1


func _on_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	Global.sensor_B = 0
	sensor_B = 0
