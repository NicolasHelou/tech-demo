extends State

class_name GroundState

@export var air_state : State
@export var jump_velocity : float = -300.0

func state_input(event : InputEvent):
	if (event.is_action_pressed("jump")):
		jump()

func jump():
	character.velocity.y = -600.0
	next_state = air_state
