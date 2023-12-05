extends Label


func _process(delta):
	self.text = "Score: " + str(Global.score)
	if(Global.miss_note > 10):
		Global.miss_note == 0
		get_tree().change_scene_to_file("res://losing.tscn")
		
	
