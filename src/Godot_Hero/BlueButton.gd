extends TextureButton


func _input(event):
	if event.is_action_pressed("blueButton"):
		self.texture_normal = preload("res://Images/blue_pressed.png")
	if event.is_action_released("blueButton"):
		self.texture_normal = preload("res://Images/blue_unpressed.png")
