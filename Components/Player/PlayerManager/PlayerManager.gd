class_name PlayerManager
extends Node2D

func _ready() -> void:
	EventManager.connect("itemDestroy",	Callable(self, "_on_ItemDestroy")
)
	
	
func _on_ItemDestroy(Item):
	detectPlayer(Item.target).speed = Item.effect.speed
	detectPlayer(Item.target).horizontalMovement = Item.effect.horizontal
	print("ME ROMPIESTE HDP D:")

func detectPlayer(target):
	var player
	if(target == "Oponent"):
		player = $Player2
	elif(target == "Player"):
		player = $Player
	return player


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
