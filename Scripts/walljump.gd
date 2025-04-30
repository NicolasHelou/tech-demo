extends State

class_name Walljump

@export var jump_number : int = 0
@export var ground_state : State
func state_input(event : InputEvent):
	if (event.is_action_pressed("jump")) and character.is_on_wall():
		character.velocity.y = -300.0
		jump_number += 1
		if jump_number >= 3:
			character.velocity.y = 300.0

func state_process(_delta):
	if character.is_on_floor():
		next_state = ground_state
		jump_number = 0
