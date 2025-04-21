extends State

class_name DyingState

@export var air_state: State
@export var ground_state: State

func change_to_state():
	if character.is_on_floor():
		next_state = ground_state
	else:
		next_state = air_state
