extends Node2D

const Gnote = preload("res://move_green.tscn")
const Rnote = preload("res://move_red.tscn")
const Bnote = preload("res://move_blue.tscn")
const Ynote = preload("res://move_yellow.tscn")
const Onote = preload("res://move_oarnge.tscn")

var RNG = RandomNumberGenerator.new()

func _process(delta):
	
	pass
	
func _enter_tree():
	Global.note_speed = 192
	#intro
	greenNote()
	await get_tree().create_timer(0.55).timeout
	greenNote()
	await get_tree().create_timer(0.6).timeout
	blueNote()
	await get_tree().create_timer(0.5).timeout
	greenNote()
	await get_tree().create_timer(0.35).timeout
	greenNote()
	await get_tree().create_timer(0.15).timeout
	redNote()
	await get_tree().create_timer(0.47).timeout
	yellowNote()
	greenNote()
	#Repeat part
	await get_tree().create_timer(1.62).timeout
	yellowNote()
	await get_tree().create_timer(0.45).timeout
	yellowNote()
	await get_tree().create_timer(0.18).timeout
	blueNote()
	await get_tree().create_timer(0.4).timeout
	redNote()
	await get_tree().create_timer(0.18).timeout
	greenNote()
	await get_tree().create_timer(0.47).timeout
	yellowNote()
	greenNote()
	#Repeat part
	await get_tree().create_timer(1.60).timeout
	yellowNote()
	await get_tree().create_timer(0.45).timeout
	yellowNote()
	await get_tree().create_timer(0.18).timeout
	blueNote()
	await get_tree().create_timer(0.4).timeout
	redNote()
	await get_tree().create_timer(0.18).timeout
	greenNote()
	await get_tree().create_timer(0.47).timeout
	yellowNote()
	greenNote()
	#Repeat part
	await get_tree().create_timer(1.60).timeout
	yellowNote()
	await get_tree().create_timer(0.45).timeout
	yellowNote()
	await get_tree().create_timer(0.18).timeout
	blueNote()
	await get_tree().create_timer(0.4).timeout
	redNote()
	await get_tree().create_timer(0.18).timeout
	greenNote()
	await get_tree().create_timer(0.47).timeout
	yellowNote()
	greenNote()
	#Repeat part
	await get_tree().create_timer(1.60).timeout
	yellowNote()
	await get_tree().create_timer(0.45).timeout
	yellowNote()
	await get_tree().create_timer(0.18).timeout
	blueNote()
	await get_tree().create_timer(0.4).timeout
	redNote()
	await get_tree().create_timer(0.18).timeout
	greenNote()
	await get_tree().create_timer(0.49).timeout
	orangeNote()
	greenNote()
	##Part between repeat part
	await get_tree().create_timer(0.44).timeout
	yellowNote()
	await get_tree().create_timer(0.15).timeout
	blueNote()
	await get_tree().create_timer(0.4).timeout
	redNote()
	await get_tree().create_timer(0.15).timeout
	greenNote()
	await get_tree().create_timer(0.47).timeout
	yellowNote()
	greenNote()
	await get_tree().create_timer(0.44).timeout
	yellowNote()
	await get_tree().create_timer(0.15).timeout
	blueNote()
	await get_tree().create_timer(0.4).timeout
	redNote()
	await get_tree().create_timer(0.15).timeout
	greenNote()
	#waaa waaa wa wa wa wa
	await get_tree().create_timer(1.15).timeout
	greenNote()
	redNote()
	await get_tree().create_timer(0.53).timeout
	greenNote()
	redNote()
	await get_tree().create_timer(0.53).timeout
	redNote()
	blueNote()
	#await get_tree().create_timer(0.5).timeout
	#greenNote()
	#redNote()
	
func greenNote():
	var green = Gnote.instantiate()
	add_child(green)
	green.position = $Spawn/Marker2D_Green.position
	
func redNote():
	var red = Rnote.instantiate()
	add_child(red)
	red.position = $Spawn/Marker2D_Red.position
	
func blueNote():
	var blue = Bnote.instantiate()
	add_child(blue)
	blue.position = $Spawn/Marker2D_Blue.position
	
func yellowNote():
	var yellow = Ynote.instantiate()
	add_child(yellow)
	yellow.position = $Spawn/Marker2D_Yellow.position
	
func orangeNote():
	var orange = Onote.instantiate()
	add_child(orange)
	orange.position = $Spawn/Marker2D_Orange.position
	
func _on_back_pressed():
	get_tree().change_scene_to_file("res://selection.tscn")


	
#func _on_timer_timeout():
#	$Timer.start()
#	
#	var note = 1
#	
#	
#	if note == 1:
#		var green = Gnote.instantiate()
#		add_child(green)
#		green.position = $Spawn/Marker2D_Green.position
#		
#	if note == 2:
#		var red = Rnote.instantiate()
#		add_child(red)
#		red.position = $Spawn/Marker2D_Red.position
#	
#	if note == 3:
#		var blue = Bnote.instantiate()
#		add_child(blue)
#		blue.position = $Spawn/Marker2D_Blue.position
#	
#	if note == 4:
#		var yellow = Ynote.instantiate()
#		add_child(yellow)
#		yellow.position = $Spawn/Marker2D_Yellow.position
#		
#	if note == 5:
#		var orange = Onote.instantiate()
#		add_child(orange)
#		orange.position = $Spawn/Marker2D_Orange.position
		
	

	



