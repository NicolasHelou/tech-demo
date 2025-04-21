extends State

class_name GroundState

@export var die_state : State
@export var air_state : State
@export var jump_velocity : float = -300.0
@export var die_animation : String = "die"

func state_input(event : InputEvent):
	if (event.is_action_pressed("jump")):
		jump()
	if (event.is_action_pressed("die")):
		die()

func state_process(_delta):
	if!character.is_on_floor():
		next_state = air_state

func jump():
	character.velocity.y = -600.0
	next_state = air_state
	playback.travel(die_animation)

func die():
	next_state = die_state
