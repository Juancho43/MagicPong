extends Area2D

var powerUp
	

func _on_timer_timeout() -> void:
	
	#if(condition()):
		add_child($ItemFactory.buildItem())
		
	
func condition():
	var number = randi() % 99 + 1
	print(number % 2 == 0)
	return number % 2 == 0
