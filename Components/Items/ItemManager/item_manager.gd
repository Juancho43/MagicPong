extends Area2D

func _on_timer_timeout() -> void:
	if(condition()):
		add_child($ItemFactory.buildItem())
		
	
func condition():
	var number = randi() % 99 + 1
	return number % 2 == 0
 
