class_name Level
extends Node2D

@onready var ball = $Ball
@onready var Player = $PlayerManager/Player
@onready var Oponent = $PlayerManager/Player
@onready var PlayerScore = $Score/PlayerPoints
@onready var OponentScore = $Score/OponentPoints
var winner

var points = { 
	"Player" : 0,
	"Oponent" : 0
}

func _ready() -> void:
	EventManager.connect("score",	Callable(self, "onScore"))
	

	
func onScore(wall):
	setPoints(wall)
	resetGame()
	isGameOver()

func isGameOver():
	
	isWinner("Player")
	isWinner("Oponent")
	
		
func isWinner(player):	
	var flag = false
	if points.player >= GameConfig.pointsToWin:
		flag = true
	return flag
	

	
func setPoints(wall):
	if wall == "left":
		points.Oponent += 1
	elif wall == "right":
		points.Player += 1
	PlayerScore.text = str(points.Player)
	OponentScore.text = str(points.Oponent)

func resetGame():
	ball.reset()
	EventManager.emit_signal("setUp")
	await get_tree().create_timer(1,5).timeout
	ball.move()
