extends Node2D

@onready var state_label : Label = $HUD/StateLabel
@onready var player = $World/Player
var _exit_transition_started :=false
func _process(_delta: float) -> void:
	state_label.text = ''


func _on_exit_body_entered(body: Node2D) -> void:
	if body != player or _exit_transition_started:
		return
	_exit_transition_started = true
	# Scene changes remove physics objects, so defer until after this physics callback.
	call_deferred("_go_to_next_level")


func _go_to_next_level() -> void:
	get_tree().change_scene_to_file("res://scenes/level_3.scn")
