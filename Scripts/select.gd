extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_play_1_pressed() -> void:
	Global.character = "1"
	get_tree().change_scene_to_file("res://Scenes/demo.tscn")
	
func _on_play_2_pressed() -> void:
	Global.character = "2"
	get_tree().change_scene_to_file("res://Scenes/demo.tscn")
