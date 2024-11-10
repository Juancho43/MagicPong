extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_left_wall_body_entered(body: Node2D) -> void:
	if body is Ball:
		EventManager.emit_signal("score","left")

func _on_right_wall_body_entered(body: Node2D) -> void:
	if body is Ball:
		EventManager.emit_signal("score","right")
