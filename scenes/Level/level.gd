extends Node2D

var inputString: String = ''
#var currentFood: Food = null
var isGameOver: bool = false
var score: int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	%FruitSpawner.spawn_fruit()

## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(_delta):
	#if (!isGameOver && currentFood.hasCollided):
		#spawnNewFood()
#
#func spawnNewFood():
	#inputString = ''
	#currentFood = $allFood.getRandomFood()
	#$allFood.add_sibling(currentFood)
	#setLabelText()
	#
func _input(event):
	if event is InputEventKey and event.pressed:
		var keycode: int = event.keycode
		if KEY_A <= keycode and keycode <= KEY_Z:
			var as_string = OS.get_keycode_string(keycode).to_lower()
			inputString += as_string
			%FruitSpawner.spawn_fruit()
#
	#setLabelText()
	#
	#if(!isGameOver && inputString == currentFood.objectName):
		#score += 1
		#$Label2.text = str(score)
		#currentFood.queue_free()
		#spawnNewFood()
#
#func setLabelText():
	#var labelText: String = ''
	#var objectName = currentFood.objectName
	#if(isGameOver):
		#labelText = 'Game Over'
	#elif(inputString != '' && objectName.begins_with(inputString)):
		#labelText = '[color=RED]' + inputString.to_pascal_case() + '[/color]' + objectName.trim_prefix(inputString)
	#else:
		#labelText = objectName.to_pascal_case()
		#inputString = ''
	#
	#$Sprite2D/Label.text = labelText
#
#func gameOver(body):
	#if body is Food:
		#print('game over')
		#isGameOver = true
