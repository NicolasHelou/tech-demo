extends State

class_name airdash_state
@export var dash_timer : Timer
@export var ground_state: State
@export var landing_state: State


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	dash_timer.start()

func state_process(delta):
	dash()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func dash():
	character.velocity.y = 0
	character.velocity.x = character.direction.x * 900.0
	
	
func _on_dashtimer_timeout():
	next_state = landing_state
	dash_timer.stop()
	print("timer done")
