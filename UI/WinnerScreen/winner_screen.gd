extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	EventManager.connect("notifyWinner",	Callable(self, "onGameOver"))

func onGameOver(winner):
	get_tree().paused = not get_tree().paused
	$".".visible = true
	$VBoxContainer/Label.text = winner + " wins."
	$Music.play()
