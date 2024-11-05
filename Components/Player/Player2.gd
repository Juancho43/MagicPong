class_name player2
extends paddle


func _physics_process(delta: float) -> void:
	direction = Vector2.ZERO
	userInput()
	var collision = move_and_collide(direction * speed * delta)
	
		
func userInput():
	if Input.is_action_pressed("player2_up"):
		direction.y -= 1
	if Input.is_action_pressed("player2_down"):
		direction.y += 1
	if(horizontalMovement):
		if Input.is_action_pressed("player2_left"):
			direction.x -= 1
		if Input.is_action_pressed("player2_right"):
			direction.x += 1
	
