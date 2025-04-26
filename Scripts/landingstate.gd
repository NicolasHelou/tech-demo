extends State

class_name LandingState

@export var ground_state: State
func state_process(delta):
	character.velocity.y = 500.0
	if character.is_on_floor():
		next_state = ground_state
