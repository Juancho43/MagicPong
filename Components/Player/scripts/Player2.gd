class_name Player2
extends paddle

		
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
	
