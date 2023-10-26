extends Node2D


# Called when the node enters the scene tree for the first time.
func _on_rock_all_night_pressed():
	get_tree().change_scene_to_file("res://game.tscn")
