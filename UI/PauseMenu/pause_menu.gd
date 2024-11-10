extends Control

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		togglePauseGame()
		$".".visible = not $".".visible
		
func togglePauseGame():
	get_tree().paused = not get_tree().paused

func _on_button_pressed() -> void:
	togglePauseGame()
	get_tree().change_scene_to_file("res://UI/Menu/MainMenu.tscn")
 
