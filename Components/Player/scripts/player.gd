class_name paddle
extends  CharacterBody2D

var speed = 300
var horizontalMovement = false
var inputControls = true
var isPlayer = true
var direction 

	
func _physics_process(delta: float) -> void:
	direction = Vector2.ZERO
	userInput()
	var collision = move_and_collide(direction * speed * delta)
	
func removePowerUp():
	speed = 300
	horizontalMovement = false
	
func userInput():
	pass
	
	
