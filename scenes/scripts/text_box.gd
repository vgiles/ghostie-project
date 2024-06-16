extends CanvasLayer

@onready var textbox_container = $textboxContainer
@onready var start_symbol = $textboxContainer/MarginContainer/HBoxContainer/startSymbol
@onready var main_text = $textboxContainer/MarginContainer/HBoxContainer/mainText
@onready var end_symbol = $textboxContainer/MarginContainer/HBoxContainer/endSymbol

@onready var tween = get_tree().create_tween()

const CHAR_READ_RATE = 0.08

enum State {
	READY,
	READING,
	FINISHED
}

var current_state = State.READY

var text_queue = []

func _ready():
	print("Starting state is State.READY")
	hide_textbox()
	#display_text("Here is some text")
	#queue_text("First text queued")
	#queue_text("second text asdghjasga")
	
func hide_textbox():
	start_symbol.text = ""
	main_text.text = ""
	end_symbol.text = ""
	textbox_container.hide()

func show_textbox():
	textbox_container.show()
	start_symbol.text = "*"
	
func display_text():
	var next_text = text_queue.pop_front()
	main_text.text = next_text
	change_state(State.READING)
	show_textbox()
	writing_tween(next_text)
	#end_symbol = "_"

func on_tween_finished():
	end_symbol.text = "_"
	change_state(State.FINISHED)
	
func _process(_delta):
	match current_state:
		State.READY:
			if !text_queue.is_empty():
				display_text()
		State.READING:
			if Input.is_action_just_pressed("action"):
				tween.kill()
				main_text.visible_characters = -1
				end_symbol.text = "_"
				change_state(State.FINISHED)
		State.FINISHED:
			if Input.is_action_just_pressed("action"):
				tween.kill()
				change_state(State.READY)
				if !text_queue.is_empty():
					show_textbox()
				else:
					hide_textbox()

func change_state(next_state):
	current_state = next_state
	match current_state:
		State.READY:
			print("Changing state to: State.READY")
		State.READING:
			print("Changing state to: State.READING")
		State.FINISHED:
			print("Changing state to: State.FINISHED")

func push_text(next_text):
	text_queue.push_back(next_text)
	print(text_queue)

func writing_tween(next_text):
	#var tween = get_tree().create_tween()
	if tween:
		tween.kill()
	tween = get_tree().create_tween()
	tween.tween_property(main_text, "visible_ratio", 1.0, len(next_text) * CHAR_READ_RATE)
	tween.connect("finished", on_tween_finished)
