extends TextureButton


func _input(event):
	if event.is_action_pressed("greenButtona"):
		self.texture_normal = preload("res://Images/green_pressed.png")
		Global.but_press_G = 1
	if event.is_action_released("greenButtona"):
		self.texture_normal = preload("res://Images/green_unpressed.png")
		Global.but_press_G = 0
	
