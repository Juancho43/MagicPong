extends Node2D
var eventManager

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	eventManager = get_node("/root/EventManager")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass