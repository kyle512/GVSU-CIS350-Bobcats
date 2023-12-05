extends Node2D


func menu():
	get_tree().change_scene_to_file("res://menu.tscn")
	
func selection():
	get_tree().change_scene_to_file("res://selection.tscn")
