extends Node
var powerUpDictionary = load("res://Components/Items/ItemManager/ItemFactory/powerUp.gd")
var itemScene = load("res://Components/Items/Item/Item.tscn") 
var itemNode 

var powerUpData
var keys 

func _ready() -> void:
	randomize()
	instantiateDictionary()

func instantiateDictionary():
	powerUpData = powerUpDictionary.new()

func instantiateItem():
	itemNode = itemScene.instantiate()
	
func buildItem():
	instantiateItem()
	itemNode.effect.speed = random_choice(powerUpData.speed)
	itemNode.effect.horizontal = random_choice(powerUpData.horizontal)
	itemNode.target = random_choice(powerUpData.target)
	return itemNode
	
func random_choice(dict):
	var keys = dict.keys()
	var random_key = keys[randi() % keys.size()]
	return dict[random_key]
	
