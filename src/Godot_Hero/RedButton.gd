extends TextureButton


func _input(event):
	if event.is_action_pressed("redButton"):
		self.texture_normal = preload("res://Images/red_pressed.png")
		Global.but_press_R = 1
	if event.is_action_released("redButton"):
		self.texture_normal = preload("res://Images/red_unpressed.png")
		Global.but_press_R = 0
