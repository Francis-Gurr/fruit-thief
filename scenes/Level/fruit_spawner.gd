extends Marker2D

@export var fruit_list: Array[PackedScene]

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in fruit_list:
		print(i.get_state().get_node_name(0))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func spawn_fruit():
	randomize()
	var fruit_scene = fruit_list.pick_random()
	var new_fruit:Node2D = fruit_scene.instantiate()
	
	print(new_fruit.objectName)
	print(new_fruit.rotation_degrees)
	new_fruit.rotation_degrees += randi_range(-90, 90)
	print(new_fruit.rotation_degrees)
	var scale = 0.5
	new_fruit.get_node("Sprite2D").scale = Vector2(scale, scale)
	new_fruit.get_node("CollisionPolygon2D").scale = Vector2(scale, scale)
	new_fruit.position.x += randi_range(-500, 500)
	
	add_child(new_fruit)
	%Tree.shake_tree()
	
