class_name Item
extends Node

var target
var effect = {
	"speed": 0,
	"horizontal" : false
}


func _ready() -> void:
	$".".position = calculatePosition()
	spawnSound()


func spawnSound():
	$SpawnSound.play()
	print(target)
	print(effect.speed)
	print(effect.horizontal)
	
	await  get_tree().create_timer(1,5).timeout
	$SpawnSound.queue_free()

func calculatePosition():
	var position = Vector2.ZERO
	position.x = randi() % 1814 + 1  
	position.y = randi() % 1079 + 1  
	return position
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$DestroySound.play()
		await get_tree().create_timer(1,5).timeout
		queue_free()
