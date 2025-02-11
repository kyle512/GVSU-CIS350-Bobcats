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
	Global.score = 0
	Global.miss_note = 0
	Global.streak = 0
	Global.mult = 1
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
	#repeat section
	repeat()
	await get_tree().create_timer(3.28).timeout
	repeat()
	await get_tree().create_timer(3.28).timeout
	repeat()
	await get_tree().create_timer(3.28).timeout
	repeat()
	#Between repeats
	await get_tree().create_timer(2).timeout
	afterRepeat()
	await get_tree().create_timer(4.3).timeout
	endRepeat()
	await get_tree().create_timer(3.6).timeout
	greenNote()
	redNote()
	#reepeat sectinon
	await get_tree().create_timer(0.08).timeout
	repeat()
	await get_tree().create_timer(3.25).timeout
	repeat()
	#end repeat
	await get_tree().create_timer(2).timeout
	afterRepeat()
	await get_tree().create_timer(4.3).timeout
	endRepeat()
	#silent part
	await get_tree().create_timer(3.65).timeout
	greenNote()
	blueNote()
	await get_tree().create_timer(1.6).timeout
	greenNote()
	orangeNote()
	await get_tree().create_timer(5).timeout
	greenNote()
	redNote()
	#2nd repeat part
	await get_tree().create_timer(2).timeout
	afterRepeat()
	await get_tree().create_timer(5.3).timeout
	greenNote()
	redNote()
	#2nd repeat part
	await get_tree().create_timer(1.3).timeout
	afterRepeat()
	await get_tree().create_timer(5.3).timeout
	greenNote()
	redNote()
	#after silent part
	await get_tree().create_timer(12.3).timeout
	endRepeat()
	await get_tree().create_timer(3.5).timeout
	greenNote()
	redNote()
	#repeat
	await get_tree().create_timer(0.08).timeout
	repeat()
	await get_tree().create_timer(3.25).timeout
	repeat()
	#end repeat
	await get_tree().create_timer(2).timeout
	afterRepeat()
	await get_tree().create_timer(4.3).timeout
	endRepeat()
	await get_tree().create_timer(3.5).timeout
	greenNote()
	redNote()
	#repeat
	await get_tree().create_timer(0.08).timeout
	repeat()
	await get_tree().create_timer(3.25).timeout
	repeat()
	#end repeat
	await get_tree().create_timer(2).timeout
	afterRepeat()
	await get_tree().create_timer(4.3).timeout
	endRepeat()
	await get_tree().create_timer(3.6).timeout
	#silent part
	await get_tree().create_timer(0.3).timeout
	greenNote()
	blueNote()
	await get_tree().create_timer(1.65).timeout
	greenNote()
	orangeNote()
	await get_tree().create_timer(4.9).timeout
	greenNote()
	redNote()
	#2nd repeat
	await get_tree().create_timer(2).timeout
	afterRepeat()
	await get_tree().create_timer(5.3).timeout
	greenNote()
	redNote()
	#2nd repeat
	await get_tree().create_timer(1.3).timeout
	afterRepeat()
	await get_tree().create_timer(5.3).timeout
	greenNote()
	redNote()
	#silent part
	await get_tree().create_timer(13).timeout
	greenNote()
	redNote()
	#last repeats of song
	await get_tree().create_timer(1.3).timeout
	afterRepeat()
	await get_tree().create_timer(5.3).timeout
	greenNote()
	redNote()
	#last repeats of song
	await get_tree().create_timer(1.3).timeout
	afterRepeat()
	await get_tree().create_timer(5.3).timeout
	greenNote()
	redNote()
	#last repeats of song
	await get_tree().create_timer(1.3).timeout
	afterRepeat()
	await get_tree().create_timer(5.3).timeout
	greenNote()
	redNote()
	#finished screen
	await get_tree().create_timer(10).timeout
	get_tree().change_scene_to_file("res://game_finished.tscn")
	
	
	
	
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



