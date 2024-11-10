class_name Ball
extends CharacterBody2D
var speed = 0
var direction = Vector2.ZERO
var isMoving = false

func _ready() -> void:
	randomize()
	move()
	
func _physics_process(delta: float) -> void:
	if isMoving:
		var collide = move_and_collide(speed * direction * delta)
		if collide:
			direction = direction.bounce(collide.get_normal())
			$bounce.play()

func move():
	speed = 600
	direction.x = [-1,1][randi() % 2]
	direction.y = [-0.8,0.8][randi() % 2]
	isMoving = true
	
func reset():
	isMoving = false
	direction = Vector2.ZERO
	position = Vector2(960,540)
