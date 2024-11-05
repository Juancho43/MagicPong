extends CharacterBody2D
var speed = 0
var direction = Vector2.ZERO
var isMoving = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize()
	reset_ball()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if isMoving:
		var collide = move_and_collide(speed * direction * delta);
		if collide:
			direction = direction.bounce(collide.get_normal())
			$bounce.play()

func reset_ball():
	#timer.stop()
	speed = 600
	direction.x = [-1,1][randi() % 2]
	direction.y = [-0.8,0.8][randi() % 2]
	isMoving = true
	
	
