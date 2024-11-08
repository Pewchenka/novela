extends Area2D

var hole1 = preload("res://Scenes/hole_1.tscn")
var hole2 = preload("res://Scenes/hole_2.tscn")
var hole3 = preload("res://Scenes/hole_3.tscn")
@onready var bite =  $"../../Bite"

func inst(pos, scl):
	randomize()
	var holes = [hole1, hole2, hole3]
	var kinds = holes[randi()% holes.size()]
	var hol = kinds.instantiate()
	hol.position = pos
	hol.scale = scl
	add_child(hol)

func _input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click") and Global.isHole == true:
		bite.play()
		Global.ammountOfHole = Global.ammountOfHole + 1
		inst(get_local_mouse_position(),Vector2i(1,1))
		print(Global.ammountOfHole)
