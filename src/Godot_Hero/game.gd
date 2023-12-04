extends Node2D

const Gnote = preload("res://move_green.tscn")
const Rnote = preload("res://move_red.tscn")
const Bnote = preload("res://move_blue.tscn")
const Ynote = preload("res://move_yellow.tscn")
const Onote = preload("res://move_oarnge.tscn")

var RNG = RandomNumberGenerator.new()

func _process(delta):
	
	pass
	
#Song notes
func _enter_tree():
	#Speed of song
	Global.note_speed = 192
	intro()
	
	await get_tree().create_timer(2.75).timeout
	repeat()
	await get_tree().create_timer(3.28).timeout
	repeat()
	await get_tree().create_timer(3.28).timeout
	repeat()
	await get_tree().create_timer(3.28).timeout
	repeat()
	
	await get_tree().create_timer(2).timeout
	afterRepeat()
	await get_tree().create_timer(4.3).timeout
	endRepeat()
	await get_tree().create_timer(3.6).timeout
	greenNote()
	redNote()
	
	await get_tree().create_timer(0.08).timeout
	repeat()
	await get_tree().create_timer(3.25).timeout
	repeat()

	await get_tree().create_timer(2).timeout
	afterRepeat()
	await get_tree().create_timer(4.3).timeout
	endRepeat()
	
	await get_tree().create_timer(3.65).timeout
	greenNote()
	blueNote()
	await get_tree().create_timer(1.65).timeout
	greenNote()
	orangeNote()
	await get_tree().create_timer(5).timeout
	greenNote()
	redNote()
	
	await get_tree().create_timer(2).timeout
	afterRepeat()
	await get_tree().create_timer(5.3).timeout
	greenNote()
	redNote()
	
	
	await get_tree().create_timer(1.3).timeout
	afterRepeat()
	await get_tree().create_timer(5.3).timeout
	greenNote()
	redNote()
	
	await get_tree().create_timer(12.2).timeout
	endRepeat()
	await get_tree().create_timer(3.6).timeout
	greenNote()
	redNote()
	
	await get_tree().create_timer(0.08).timeout
	repeat()
	await get_tree().create_timer(3.25).timeout
	repeat()
	
	await get_tree().create_timer(2).timeout
	afterRepeat()
	await get_tree().create_timer(4.3).timeout
	endRepeat()
	await get_tree().create_timer(3.6).timeout
	greenNote()
	redNote()
	
	await get_tree().create_timer(0.12).timeout
	repeat()
	await get_tree().create_timer(3.25).timeout
	repeat()
	
	await get_tree().create_timer(2).timeout
	afterRepeat()
	await get_tree().create_timer(4.3).timeout
	endRepeat()
	await get_tree().create_timer(3.6).timeout
	
	await get_tree().create_timer(0.3).timeout
	greenNote()
	blueNote()
	await get_tree().create_timer(1.65).timeout
	greenNote()
	orangeNote()
	await get_tree().create_timer(4.9).timeout
	greenNote()
	redNote()
	
	await get_tree().create_timer(2).timeout
	afterRepeat()
	await get_tree().create_timer(5.3).timeout
	greenNote()
	redNote()
	
	await get_tree().create_timer(1.3).timeout
	afterRepeat()
	await get_tree().create_timer(5.3).timeout
	greenNote()
	redNote()
	
	await get_tree().create_timer(13).timeout
	greenNote()
	redNote()
	
	await get_tree().create_timer(1.5).timeout
	afterRepeat()
	await get_tree().create_timer(5.3).timeout
	greenNote()
	redNote()
	
	await get_tree().create_timer(1.3).timeout
	afterRepeat()
	await get_tree().create_timer(5.3).timeout
	greenNote()
	redNote()
	
	await get_tree().create_timer(1.3).timeout
	afterRepeat()
	await get_tree().create_timer(5.3).timeout
	greenNote()
	redNote()
	
	
#intro which is used a couple times
func intro():
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
	
#much repeated part
func repeat():
	await get_tree().create_timer(1.62).timeout
	yellowNote()
	await get_tree().create_timer(0.45).timeout
	await get_tree().create_timer(0.17).timeout
	blueNote()
	await get_tree().create_timer(0.34).timeout
	redNote()
	await get_tree().create_timer(0.22).timeout
	greenNote()
	await get_tree().create_timer(0.48).timeout
	yellowNote()

#comes after the repeat	
func afterRepeat():
	await get_tree().create_timer(2).timeout
	blueNote()
	await get_tree().create_timer(0.4).timeout
	redNote()
	await get_tree().create_timer(0.18).timeout
	greenNote()
	await get_tree().create_timer(0.47).timeout
	orangeNote()
	await get_tree().create_timer(0.44).timeout
	yellowNote()
	await get_tree().create_timer(0.15).timeout
	blueNote()
	await get_tree().create_timer(0.4).timeout
	redNote()
	await get_tree().create_timer(0.18).timeout
	greenNote()
#
#Ends the repeating part	
func endRepeat():
	await get_tree().create_timer(1.13).timeout
	greenNote()
	redNote()
	await get_tree().create_timer(0.53).timeout
	greenNote()
	redNote()
	await get_tree().create_timer(0.53).timeout
	orangeNote()
	await get_tree().create_timer(0.53).timeout
	greenNote()
	redNote()
	await get_tree().create_timer(0.3).timeout
	greenNote()
	redNote()
	await get_tree().create_timer(0.18).timeout
	orangeNote()

#functions to add notes to song	
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
	
#Back to song selection button
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
		
	

	



