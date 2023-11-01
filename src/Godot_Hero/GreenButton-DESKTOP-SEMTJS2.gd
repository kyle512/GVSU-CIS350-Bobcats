extends TextureButton

func _input(event):
	if event is InputEventKey and event.scancode == KEY_Y and event.pressed:
		# Simulate the button press
		if not is_pressed():
			press()
