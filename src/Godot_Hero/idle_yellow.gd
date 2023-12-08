
extends Area2D


var animp = null

func _ready(): animp = $AnimationPlayer
var sensor_Y = 0

func _process(delta):

	if sensor_Y == 1:
		if Input.is_action_pressed("yellowButton"):
			if Input.is_action_pressed("Space"):
				animp.play("goodYellow")

	if sensor_Y == 0:
		if Input.is_action_just_pressed("yellowButton"):
			animp.play("badYellow")



func _on_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	Global.sensor_Y = 1
	sensor_Y = 1


func _on_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	Global.sensor_Y = 0
	sensor_Y = 0
