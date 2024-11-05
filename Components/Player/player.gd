class_name paddle
extends  CharacterBody2D

var speed = 300
var horizontalMovement = false
var inputControls = true
var isPlayer = true
var direction 

func _init() -> void:
	pass
	
func _physics_process(delta: float) -> void:
	direction = Vector2.ZERO
	userInput()
	var collision = move_and_collide(direction * speed * delta)
	
		
func userInput():
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	if(horizontalMovement):
		print(horizontalMovement)
		if Input.is_action_pressed("ui_left"):
			direction.x -= 1
			print("lefff")
		if Input.is_action_pressed("ui_right"):
			print("riii")
			direction.x += 1
	
	
