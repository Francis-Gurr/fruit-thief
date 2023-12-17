extends RichTextLabel

var bounce_effect:BounceTextEffect
var _word: String
var _char_index: int

func _ready() -> void:
	_word = text
	bounce_effect = BounceTextEffect.new()
	custom_effects.clear()
	install_effect(bounce_effect)

func complete_next_char(character: String) -> void:
	if _word[_char_index] == character:
		_char_index += 1
		bounce_effect.chars_to_animate = _char_index
	else:
		_char_index = 0
		bounce_effect.chars_to_animate = -1
