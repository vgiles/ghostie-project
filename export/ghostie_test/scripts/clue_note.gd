extends Area2D
@onready var text_box = %TextBox
@onready var game_manager = $"../GameManager"
@onready var clue_note = $"."
@onready var pc_ghostie = $"../pc_ghostie"

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _on_body_entered(body):
	#if Input.is_action_just_pressed("action"):
		#if game_manager.dialogue_manager.area_clue_letter_1.is_seen == false:
			#var text_to_push = game_manager.dialogue_manager.area_clue_letter_1.text.split("_")
			#for n in text_to_push:
				#text_box.push(n)
			#text_box.display_text()
			#game_manager.dialogue_manager.area_clue_letter_1.is_seen = true
		#else:
			#text_box.push("Hmm... yes, I read this one already.")
			#text_box.display_text()


#func _on_area_entered(area):
	#if Input.is_action_just_pressed("action"):
		#if game_manager.dialogue_manager.area_clue_letter_1.is_seen == false:
			#var text_to_push = game_manager.dialogue_manager.area_clue_letter_1.text.split("_")
			#for n in text_to_push:
				#text_box.push(n)
			#text_box.display_text()
			#game_manager.dialogue_manager.area_clue_letter_1.is_seen = true
		#else:
			#text_box.push("Hmm... yes, I read this one already.")
			#text_box.display_text()
