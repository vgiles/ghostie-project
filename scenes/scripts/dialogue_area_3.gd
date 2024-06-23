extends Area2D
@onready var text_box = %TextBox
@onready var game_manager = $"../GameManager"

func _on_body_entered(body):
	if game_manager.dialogue_manager.area_clue_3.is_seen == false:
		var text_to_push = game_manager.dialogue_manager.area_clue_3.text.split("_") # uses _ as a split point, needs to be hardcoded into text manager.
		for n in text_to_push:
			text_box.push_text(n)
		#text_box.push_text("I remember imagination.")
		#text_box.push_text("Creating worlds in my mind; alternatives to the present.")
		#text_box.push_text("Hope and optimism, despair and nihilism.")
		#text_box.push_text("An imagined future.")
		text_box.display_text()
		game_manager.dialogue_manager.area_clue_3.is_seen = true
	#else:
		#print("Spooky")
	#game_manager.dialogue_manager()
