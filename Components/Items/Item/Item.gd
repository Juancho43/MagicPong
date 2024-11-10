class_name Item
extends Area2D

var target
var effect = {
	"speed": 0,
	"horizontal" : false,
}

func _ready() -> void:
	position = calculatePosition()
	spawnSound()

func spawnSound():
	$SpawnSound.play()
	await  get_tree().create_timer(1,5).timeout
	$SpawnSound.queue_free()

func calculatePosition():
	var position = Vector2.ZERO
	position.x = randi() % 1814 + 1  
	position.y = randi() % 1079 + 1  
	return position
	

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$DestroySound.play()
		await get_tree().create_timer(1,5).timeout
		queue_free()


func _on_tree_exited() -> void:
	EventManager.emit_signal("itemDestroy",self)
