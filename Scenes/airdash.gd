extends State

class_name airdash_state
@export var can_airdash : bool = false
@export var dash_timer : Timer
@export var ground_state: State
@export var air_state: State


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
func state_input(event : InputEvent):
	if (event.is_action_pressed("dash")) and can_dash:
		dash()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func dash():
	dash_timer.start()
	can_dash = false
	
func _on_dashtimer_timeout():
	next_state = air_state
	is_dashing = false
	character.velocity.y = 500
