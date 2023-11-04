extends Node2D

const Gnote = preload("res://move_green.tscn")
const Rnote = preload("res://move_red.tscn")
const Bnote = preload("res://move_blue.tscn")
const Ynote = preload("res://move_yellow.tscn")
const Onote = preload("res://move_oarnge.tscn")

var RNG = RandomNumberGenerator.new()

func _process(delta):
	
	pass
	
	


func _on_timer_timeout():
	$Timer.start()
	
	RNG.randomize()
	var random = RNG.randi_range(0,5)
	
	
	if random == 1:
		var green = Gnote.instantiate()
		add_child(green)
		green.position = $Spawn/Marker2D_Green.position
		
	if random == 2:
		var red = Rnote.instantiate()
		add_child(red)
		red.position = $Spawn/Marker2D_Red.position
	
	if random == 3:
		var blue = Bnote.instantiate()
		add_child(blue)
		blue.position = $Spawn/Marker2D_Blue.position
	
	if random == 4:
		var yellow = Ynote.instantiate()
		add_child(yellow)
		yellow.position = $Spawn/Marker2D_Yellow.position
		
	if random == 5:
		var orange = Onote.instantiate()
		add_child(orange)
		orange.position = $Spawn/Marker2D_Orange.position
	
