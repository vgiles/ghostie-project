extends CharacterBody2D

@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var animation_player = $AnimationPlayer


var SPEED = 100.0

func get_input():
	var input_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	var speed_mod = Input.is_action_pressed("run_modifier")
	if speed_mod == true:
		SPEED = 150.0
	else:
		SPEED = 100.0
	
	if input_direction.x > 0.0:
		animated_sprite_2d.flip_h = true
	elif input_direction.x < 0.0:
		animated_sprite_2d.flip_h = false
		
	if input_direction.x or input_direction.y != 0:
		animated_sprite_2d.play("move")
		velocity = input_direction * SPEED
	else:
		animated_sprite_2d.play("idle")
		velocity *= 0.85
	
	#if input_direction.x == 0 and input_direction.y == 0: attempting to move sprite in idle state by script
		#animated_sprite_2d.offset.y += 10
		#animated_sprite_2d.offset.y -= 10

		


		

func _physics_process(delta):
	get_input()
	move_and_slide()
