extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.	

func _on_level_pressed() -> void:
	get_tree().change_scene_to_file("res://Components/Levels/Level/LevelIA.tscn")


func _on_level_friend_pressed() -> void:
	get_tree().change_scene_to_file("res://Components/Levels/Level/LevelFriend.tscn")


func _on_quiet_pressed() -> void:
	get_tree().quit()
