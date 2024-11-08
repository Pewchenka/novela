extends Node2D

func _ready():
	Dialogic.signal_event.connect(_on_dialogic_signal)

func _on_dialogic_signal(argument:String):
	if argument == "weight":
		queue_free()
