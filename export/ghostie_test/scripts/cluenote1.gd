extends CollisionShape2D
@onready var game_manager = %GameManager
@onready var text_box = %TextBox

# Implement action button

func _on_clue_note_body_entered(body):
	if game_manager.dialogue_manager.area_clue_letter_1.is_seen == false:
		var text_to_push = game_manager.dialogue_manager.area_clue_letter_1.text.split("_")
		for text in text_to_push:
			text_box.push_text(text)
		text_box.display_text()
		game_manager.dialogue_manager.area_clue_letter_1.is_seen = true
	else:
		text_box.push_text("Hmm... yes, I read this one already.")
		text_box.display_text()
