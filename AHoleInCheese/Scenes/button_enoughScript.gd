extends Control

func _on_button_pressed():
	Global.isHole == false
	Dialogic.start("second")
	queue_free()
