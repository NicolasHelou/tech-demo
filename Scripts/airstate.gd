extends State

class_name Airstate

@export var ground_state : State

func state_process(delta):
	if character.is_on_floor():
		next_state = ground_state
	#if not character.is_on_floor():
		#character.velocity = character.get_gravity()*delta 
