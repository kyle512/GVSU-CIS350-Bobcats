extends TextureButton


func _input(event):
	if event.is_action_pressed("yellowButton"):
		self.texture_normal = preload("res://Images/yellow_pressed.png")
		Global.but_press_Y = 1
	if event.is_action_released("yellowButton"):
		self.texture_normal = preload("res://Images/yellow_unpressed.png")
		Global.but_press_Y = 0
