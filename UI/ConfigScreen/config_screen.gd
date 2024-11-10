extends Node
@onready var inputPoints = $VBoxContainer/HBoxContainer/LineEdit

func _ready() -> void:
	inputPoints.text = str(GameConfig.pointsToWin)

func _on_line_edit_text_submitted(new_text: String) -> void:
	GameConfig.pointsToWin = int(new_text)
