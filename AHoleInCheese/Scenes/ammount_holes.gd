extends Control

var input_number: int

@onready var input_field =  $SpinBox

func _on_button_pressed():
	input_number = input_field.value
	print(input_number)
	Dialogic.VAR.amOfHole = Global.ammountOfHole
	Dialogic.start("third")
	queue_free()
