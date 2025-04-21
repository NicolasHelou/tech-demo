extends CharacterBody2D

var direction :Vector2 = Vector2.ZERO

@export var speed = 300.0
@export var jump_velocity = -150.0

@onready var animation_tree : AnimationTree = $AnimationTree
@onready var sprite : Sprite2D = $Sprite2D
@onready var state_machine : CharacterStateMachine = $CharacterStateMachine
@onready var timer : Timer = $Timer

func _ready():
	add_to_group("player")
	animation_tree.active = true

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	direction = Input.get_vector("left", "right", "up", "down")
	if direction.x != 0 and state_machine.check_if_can_move():
		velocity.x = direction.x * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
	if state_machine.check_if_is_dead():
		queue_free()
		timer.start()
		_on_timer_timeout()
	else:
		move_and_slide()
	update_animation()
	update_facing_direction()

func update_animation():
	animation_tree.set("parameters/Move/blend_position", direction.x)
	
func update_facing_direction():
	if direction.x > 0:
		sprite.flip_v = false
	elif direction.x < 0:
		sprite.flip_v = true

func _on_timer_timeout():
	get_tree().reload_current_scene()
