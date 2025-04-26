extends State

class_name airdash_state
@export var dash_timer : Timer
@export var ground_state: State
@export var landing_state: State


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	dash_timer.start()
func state_input(event : InputEvent):
	if (event.is_action_pressed("dash")) and can_dash:
		dash()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func dash():
	can_dash = false
	
func _on_dashtimer_timeout():
	next_state = landing_state
