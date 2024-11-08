extends Control

var pas := true

func _ready():
	pause()

func resume():
	pas = false
	#get_tree().paused = false
	$AnimationPlayer.play_backwards("new_animation")

func pause():
	pas = true
	#get_tree().paused = true
	$AnimationPlayer.play("new_animation")

func _on_rus_pressed():
	TranslationServer.set_locale("ru")
	Dialogic.start("main")
	resume()

func _on_eng_pressed():
	TranslationServer.set_locale("en")
	Dialogic.start("main")
	resume()


func _on_quit_pressed():
	get_tree().quit()

