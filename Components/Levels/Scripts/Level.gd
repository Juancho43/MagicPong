class_name Level
extends Node2D

@onready var ball = $Ball
@onready var Player = $PlayerManager/Player
@onready var Oponent = $PlayerManager/Player
@onready var PlayerScore = $UI/Score/PlayerPoints
@onready var OponentScore = $UI/Score/OponentPoints
var winner
var musicChanged = false
var points = { 
	"Player" : 0,
	"Oponent" : 0
}

func _ready() -> void:
	EventManager.connect("score",	Callable(self, "onScore"))
	

	
func onScore(wall):
	setPoints(wall)
	if musicChanged == false:
		changeMusic()
	isGameOver()
	resetGame()

func changeMusic():
	if (GameConfig.pointsToWin - points.Player) < GameConfig.pointsToWin / 2: 
		switchMusic()
	elif (GameConfig.pointsToWin - points.Oponent) < GameConfig.pointsToWin / 2:
		switchMusic()
	

func switchMusic():
	$Music.stop()
	$BattleMusic.play()
	musicChanged = true
func isGameOver():
	if isPlayerWinner():
		EventManager.emit_signal("notifyWinner","Player")
	if isOponentWinner():
		EventManager.emit_signal("notifyWinner","Oponent")
	
	
func isPlayerWinner():
	winner = false
	if points.Player >= GameConfig.pointsToWin:
		winner = true
	return winner
		
func isOponentWinner():
	winner = false
	if points.Oponent >= GameConfig.pointsToWin:
		winner = true
	return winner
				
func setPoints(wall):
	if wall == "left":
		points.Oponent += 1
		OponentScore.text = str(points.Oponent)
	elif wall == "right":
		points.Player += 1
		PlayerScore.text = str(points.Player)

func resetGame():
	ball.reset()
	EventManager.emit_signal("setUp")
	await get_tree().create_timer(1,5).timeout
	ball.move()
