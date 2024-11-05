extends Area2D

func spawn(item):
	var item_preload = load(item) 
	var item_to_load = item_preload.instantiate()
	add_child(item_to_load)

func _on_timer_timeout() -> void:
	print("asasdasd")
	if(condition()):
		spawn("res://Components/Items/Item/Item.tscn")
	
func condition():
	var number = randi() % 99 + 1
	print(number % 2 == 0)
	return number % 2 == 0
