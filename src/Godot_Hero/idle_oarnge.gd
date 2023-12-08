
extends Area2D


var animp = null

func _ready(): animp = $AnimationPlayer
var sensor_O = 0

func _process(delta):

	if sensor_O == 1:
		if Input.is_action_pressed("orangeButton"):
			if Input.is_action_pressed("Space"):
				animp.play("goodOrange")

	if sensor_O == 0:
		if Input.is_action_just_pressed("orangeButton"):
			animp.play("badOrange")



func _on_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	Global.sensor_O = 1
	sensor_O = 1


func _on_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	Global.sensor_O = 0
	sensor_O = 0
