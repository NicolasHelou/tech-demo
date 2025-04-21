extends State

class_name Airstate

@export var die_state : State
@export var ground_state : State

var ground_animation = "run"

func state_process(_delta):
	if character.is_on_floor():
		next_state = ground_state
		#playback.travel(ground_animation)


func state_input(event : InputEvent):
	if (event.is_action_pressed("die")):
		die()

func die():
	next_state = die_state
