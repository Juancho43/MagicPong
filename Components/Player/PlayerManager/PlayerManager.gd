class_name PlayerManager
extends Node2D

func _ready() -> void:
	EventManager.connect("itemDestroy",	Callable(self, "_applyPowerUP"))
	EventManager.connect("setUp",	Callable(self, "_resetPlayers"))

func _applyPowerUP(Item):
	detectPlayer(Item.target).speed = Item.effect.speed
	detectPlayer(Item.target).horizontalMovement = Item.effect.horizontal

func detectPlayer(target):
	var player
	if(target == "Oponent"):
		player = $Player2
	elif(target == "Player"):
		player = $Player
	return player

func _resetPlayers():
	$Player.removePowerUp()
	$Player.position = Vector2(60,540)
	$Player2.removePowerUp()
	$Player2.position = Vector2(1900,540)
