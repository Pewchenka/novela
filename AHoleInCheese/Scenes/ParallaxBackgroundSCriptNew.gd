extends ParallaxBackground

func _process(delta):
	scroll_base_offset -= Vector2(30, 30) * delta
