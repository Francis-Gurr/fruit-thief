extends Node2D

const carrot = preload("res://scenes/Level/carrot.tscn")
const apple = preload("res://scenes/Level/apple.tscn")
const banana = preload("res://scenes/Level/banana.tscn")
const broccoli = preload("res://scenes/Level/broccoli.tscn")
const fallingObjects = [carrot, apple, banana, broccoli]

var currentInputString: String = ''
var currentObject
var spawnTime = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	spawn()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	spawnTime += delta
	if (spawnTime > 5):
		spawn()
	
	if (currentObject):
		var name = currentObject.objectName
		print(name)
		print(currentInputString)
		if(name.to_lower() == currentInputString.to_lower()):
			currentInputString = ''
			currentObject.queue_free()
			spawn()
	
func _input(event):
	if event is InputEventKey and event.pressed:
		var keycode: int = event.keycode
		if KEY_A <= keycode and keycode <= KEY_Z:
			var as_string = OS.get_keycode_string(keycode)
			currentInputString += as_string

func spawn():
	currentInputString = ''
	randomize()
	currentObject = fallingObjects[randi() % fallingObjects.size()].instantiate()
	currentObject.position = Vector2(randi_range(100, 1000), -20)
	currentObject.rotation_degrees = randi() % 360
	$Label.text = currentObject.get_name()
	add_child(currentObject)
	spawnTime = 0
