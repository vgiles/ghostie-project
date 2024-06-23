extends CollisionShape2D
@onready var text_box = %TextBox
@onready var game_manager = %GameManager




func _on_text_body_body_entered(body):
	if game_manager.dialogue_manager.area_clue_1.is_seen == false:
		var text_to_push = game_manager.dialogue_manager.area_clue_1.text.split("_") # uses _ as a split point, needs to be hardcoded into text manager.
		for n in text_to_push:
			text_box.push_text(n)
		text_box.display_text()
		game_manager.dialogue_manager.area_clue_1.is_seen = true
