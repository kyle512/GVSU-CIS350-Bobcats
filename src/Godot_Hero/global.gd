extends Node


var sensor_G = 0
var sensor_R = 0
var sensor_B = 0
var sensor_Y = 0
var sensor_O = 0

var but_press_G = 0
var but_press_R = 0
var but_press_B = 0
var but_press_Y = 0
var but_press_O = 0

var note_speed = 100

var score = 0
var miss_note = 0
var streak = 0
var mult = 1

func _process(delta):
	
	if miss_note > 15:
		get_tree().change_scene_to_file("res://losing.tscn")
		miss_note = 0
		score = 0
		mult = 1
		streak = 0
	
	if streak == 0:
		mult = 1
	if streak == 10:
		mult = 3
	if streak == 20:
		mult = 5
