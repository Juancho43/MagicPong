extends Control

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		togglePauseGame()
		$".".visible = not $".".visible
		if $".".visible:
			$PauseMusic.play()
		else:
			$PauseMusic.stop()
		
func togglePauseGame():
	get_tree().paused = not get_tree().paused
