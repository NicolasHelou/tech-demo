extends State

class_name Airstate

@export var die_state : State
@export var ground_state : State
@export var dash_state : State
@export var wall_state : State
@export var ground_animation: String = "run"
@export var die_animation: String = "die"


func state_process(_delta):
	if !character.is_on_floor():
		playback.travel(die_animation)
	if character.is_on_floor():
		next_state = ground_state
	if Global.character == "1":
		can_dash = true
	if Global.character == "2":
		can_walljump = true


func state_input(event : InputEvent):
	if (event.is_action_pressed("die")):
		die()
	if can_dash and event.is_action_pressed("dash"):
		airdash()
	if character.is_on_wall() and event.is_action_pressed("jump") and can_walljump:
		walljump()

func die():
	next_state = die_state
	
func airdash():
	next_state = dash_state

func walljump():
	next_state = wall_state
