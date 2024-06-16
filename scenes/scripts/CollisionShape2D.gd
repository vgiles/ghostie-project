extends CollisionShape2D

@onready var text_box = %TextBox
@onready var pc_ghostie = $"../../pc_ghostie"


func _on_area_2d_body_entered(body):
	if body == pc_ghostie:
		text_box.push_text("I remember imagination.")
		text_box.push_text("Creating worlds in my mind; alternatives to the present.")
		text_box.push_text("Hope and optimism, despair and nihilism. An imagined future.")
	else:
		pass
