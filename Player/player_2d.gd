extends CharacterBody2D

#@export var vision_range : float = 1000
const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	var direction := Vector2 (Input.get_axis("ui_left", "ui_right"),Input.get_axis('ui_up','ui_down'))
	velocity = direction * SPEED
	move_and_slide()
