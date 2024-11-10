extends Control

func _ready() -> void:
	get_tree().paused = false

func _on_level_pressed() -> void:
	GameConfig.oponent = "IA"
	_go_to_play()


func _on_level_friend_pressed() -> void:
	GameConfig.oponent = "Oponent"
	_go_to_play()

func  _go_to_play() -> void:
	get_tree().change_scene_to_file("res://Components/Levels/Level/BaseGame.tscn")

func _on_quiet_pressed() -> void:
	get_tree().quit()


func _on_config_pressed() -> void:
	get_tree().change_scene_to_file("res://UI/ConfigScreen/ConfigScreen.tscn")
