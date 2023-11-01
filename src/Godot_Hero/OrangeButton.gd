extends TextureButton


func _input(event):
	if event.is_action_pressed("orangeButton"):
		self.texture_normal = preload("res://Images/orange_pressed.png")
	if event.is_action_released("orangeButton"):
		self.texture_normal = preload("res://Images/orange_unpressed.png")
