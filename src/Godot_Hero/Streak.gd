extends Label

func _process(delta):
	self.text = "Note Streak: " + str(Global.streak)
