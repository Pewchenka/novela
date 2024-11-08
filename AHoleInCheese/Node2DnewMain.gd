extends Node2D

var cheese = preload("res://Scenes/Cheese.tscn")
var enoughbutton = preload("res://Scenes/button_enough.tscn")
var ammount = preload("res://Scenes/ammount_hole.tscn")
var weigh = preload("res://Scenes/your_weight.tscn")
@onready var mainmusic = $Music

var fullscreen := false

func _ready():
	Dialogic.signal_event.connect(_on_dialogic_signal)

func _process(delta):
	if Input.is_action_just_pressed("fullscreen"):
		fullscreen = !fullscreen
		if fullscreen == true:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		else:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
	if Input.is_action_just_pressed("options"):
		get_tree().quit()

func _on_dialogic_signal(argument:String):
	if argument == "cheese":
		inst(Vector2i(540, 220), cheese, Vector2(3.22,3.22))
		Global.isHole = true
		inst(Vector2i(300, 390),enoughbutton, Vector2(1,1))
	if argument == "hole":
		inst(Vector2i(500, 280), ammount, Vector2(1,1))
		Global.isHole = false
	if argument == "weight":
		inst(Vector2i(320,220), weigh, Vector2(1,1))
	if argument == "end":
		Dialogic.paused = true
		mainmusic.stop()

func inst(pos, obj, scl):
	var instance = obj.instantiate()
	instance.position = pos
	instance.scale = scl
	add_child(instance)
