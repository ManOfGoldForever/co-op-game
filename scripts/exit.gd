extends Area2D

@export var next_level : String = ""

@onready var timer = $Timer

func _on_body_entered(_body: Node2D) -> void:
	timer.start()

func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file(next_level)
