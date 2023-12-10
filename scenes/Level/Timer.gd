extends Timer

const carrot = preload("res://scenes/Level/carrot.tscn")
const apple = preload("res://scenes/Level/apple.tscn")
const banana = preload("res://scenes/Level/banana.tscn")
const broccoli = preload("res://scenes/Level/broccoli.tscn")
const fallingObjects = [carrot, apple, banana, broccoli]

var currentObject

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timeout():
	pass
	#randomize()
	#var object = fallingObjects[randi() % fallingObjects.size()].instantiate()
	#currentObject = object
	#object.position = Vector2(randi_range(100, 1000), -20)
	#object.rotation_degrees = randi() % 360
	#$"../Label".text = currentObject.get_name()
	#add_child(object)
	#wait_time = randi_range(0,1)
