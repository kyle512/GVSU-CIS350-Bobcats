extends TextureButton


func _input(event):
	if event.is_action_pressed("redButton"):
		self.texture_normal = preload("res://Images/red_pressed.png")
	if event.is_action_released("redButton"):
		self.texture_normal = preload("res://Images/red_unpressed.png")
