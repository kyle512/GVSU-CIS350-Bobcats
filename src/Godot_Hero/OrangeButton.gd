extends TextureButton


func _input(event):
	if event.is_action_pressed("orangeButton"):
		self.texture_normal = preload("res://Images/orange_pressed.png")
		Global.but_press_O = 1
	if event.is_action_released("orangeButton"):
		self.texture_normal = preload("res://Images/orange_unpressed.png")
		Global.but_press_O = 0
