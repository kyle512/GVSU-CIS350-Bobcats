
extends Area2D


var animp = null

func _ready(): animp = $AnimationPlayer
var sensor_R = 0

func _process(delta):

	if sensor_R == 1:
		if Input.is_action_pressed("redButton"):
			if Input.is_action_pressed("Space"):
				animp.play("goodRed")

	if sensor_R == 0:
		if Input.is_action_just_pressed("redButton"):
			animp.play("badRed")



func _on_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	Global.sensor_R = 1
	sensor_R = 1


func _on_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	Global.sensor_R = 0
	sensor_R = 0
