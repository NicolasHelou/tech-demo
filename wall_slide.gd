extends State

class_name Wallslide

@export var wall_jump : State
@export var ground_state : State
@export var air_state : State

func state_input(event : InputEvent):
	if character.is_on_wall() and event.is_action_pressed("jump"):
		character.velocity.y = -300.0
		next_state = wall_jump

func state_process(_delta):
	character.velocity.y = 150.0
	
	if character.is_on_floor():
		next_state = ground_state
	if !(character.is_on_floor()) and !(character.is_on_wall()):
		next_state = air_state
