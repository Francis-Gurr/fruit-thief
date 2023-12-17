@tool
class_name BounceTextEffect
extends RichTextEffect


var bbcode = "bounce"
var chars_to_animate: int = -1
var chars_animated: int = -1


func _process_custom_fx(char_fx: CharFXTransform) -> bool:
	print('start')
	if chars_to_animate == -1:
		char_fx.color = Color("WHITE")
	if chars_to_animate == chars_animated:
		return true
	print('hello')
	
	print(char_fx.range)

	char_fx.color = Color("RED")
	chars_animated += 1

	return true
