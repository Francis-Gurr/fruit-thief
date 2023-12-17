extends RigidBody2D
class_name Food

@export var objectName: String
var hasCollided: bool = false

## Called when the node enters the scene tree for the first time.
#func _ready():
	#randomize()
	#position = Vector2(randi_range(350, 800), -75)
	#rotation_degrees = randi() % 360
	#contact_monitor = true
	#max_contacts_reported = 1
	#self.body_entered.connect(onCollision)
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(_delta):
	#pass
#
#func onCollision(_body):
	#self.body_entered.disconnect(onCollision)
	#hasCollided = true
