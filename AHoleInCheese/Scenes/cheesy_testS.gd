extends CanvasGroup


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _get_covered_rect() -> Rect2:
	return Rect2($Base.position, Vector2(142, 142))
