extends Node2D

var cheese = preload("res://Scenes/Cheese.tscn")
var enoughbutton = preload("res://Scenes/button_enough.tscn")
var ammount = preload("res://Scenes/ammount_hole.tscn")

var cur = preload("res://Scenes/Main.tscn")

func _ready():
	Dialogic.start("main") 
	Dialogic.signal_event.connect(_on_dialogic_signal)

func _on_dialogic_signal(argument:String):
	if argument == "cheese":
		inst(Vector2i(540, 220), cheese, Vector2(3.22,3.22))
		Global.isHole = true
		inst(Vector2i(300, 390),enoughbutton, Vector2(1,1))
	if argument == "hole":
		inst(Vector2i(500, 280), ammount, Vector2(1,1))
		Global.isHole = false

func inst(pos, obj, scl):
	var instance = obj.instantiate()
	instance.position = pos
	instance.scale = scl
	add_child(instance)


