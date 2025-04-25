extends Node

class_name State

@export var can_move: bool = true
@export var is_dead: bool = false
@export var is_dashing : bool = false
@export var can_dash : bool = false


var character : CharacterBody2D
var next_state: State
var playback: AnimationNodeStateMachinePlayback

func state_input(event : InputEvent):
	pass
func state_process(delta):
	pass
func on_enter():
	pass
func on_exit():
	pass
func die():
	pass
func change_to_state():
	pass
func airdash():
	pass
func dash():
	pass
