extends Node
var powerUpDictionary = load("res://Components/Items/ItemManager/ItemFactory/powerUp.gd")
var targetDictionary = load("res://Components/Items/ItemManager/ItemFactory/target.gd")
var item_preload = load("res://Components/Items/Item/Item.tscn") 
var item 
var targetData
var targetKeys
var powerUpData
var keys 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize()
	instantiateDictionary()

func instantiateDictionary():
	powerUpData = powerUpDictionary.new()
	keys = powerUpData.powersUp.keys()
	targetData = targetDictionary.new()
	targetKeys = targetData.target.keys()

func instantiateItem():
	item = item_preload.instantiate()
	
func buildItem():
	instantiateItem()
	var powerUp = get_random_powerup()
	item.effect.speed = powerUp.speed
	item.effect.horizontal = powerUp.horizontal
	var target = get_ramdom_target()
	item.target = target
	return item


func get_random_powerup():
	var random_index = randi() % keys.size()
	var random_powerup_name = keys[random_index]
	return powerUpData.powersUp[random_powerup_name]

func get_ramdom_target():
	var random_index = randi() % targetKeys.size()  # Generar un índice aleatorio
	var random_key = targetKeys[random_index]  # Obtener la clave aleatoria
	var random_value = targetData.target[random_key]  # Obtener el valor correspondiente
	return random_value
