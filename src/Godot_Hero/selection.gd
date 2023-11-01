extends Node2D


# Called when the node enters the scene tree for the first time.
func _on_rock_all_night_pressed():
	get_tree().change_scene_to_file("res://game.tscn")
	
func _on_back_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
	
func _on_even_flow_pressed():
	get_tree().change_scene_to_file("res://game.tscn")
	
func _on_take_me_out_pressed():
	get_tree().change_scene_to_file("res://game.tscn")
	
	
func _on_rock_and_roll_all_nite_mouse_entered():
	$rockAndRollAllNiteAudio.play()
	
func _on_rock_and_roll_all_nite_mouse_exited():
	$rockAndRollAllNiteAudio.stop()
	
func _on_even_flow_mouse_entered():
	$evenFlowAudio.play()

func _on_even_flow_mouse_exited():
	$evenFlowAudio.stop()

func _on_take_me_out_mouse_entered():
	$takeMeOutAudio.play()

func _on_take_me_out_mouse_exited():
	$takeMeOutAudio.stop()
