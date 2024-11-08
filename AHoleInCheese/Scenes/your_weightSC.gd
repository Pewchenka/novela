extends Control

var input_number := 0
@onready var input_field =  $SpinBox

func _on_button_pressed():
	input_number = input_field.value
	print(input_number)
	Dialogic.VAR.yourHole = input_number*220
	Dialogic.VAR.yourEmpety =  round(input_number*220*PI)
	Dialogic.start("fourth")
	queue_free()
	
