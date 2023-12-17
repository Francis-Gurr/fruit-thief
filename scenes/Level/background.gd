extends Node2D

signal on_floor_hit

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_floor_body_entered(body):
	on_floor_hit.emit()
	pass # Replace with function body.
