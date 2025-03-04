extends CharacterBody2D

#@export var vision_range : float = 1000
@export var SPEED = 150.0
@onready var flashlight: PointLight2D = %FlashLight
@onready var weapon_slot: Node2D = %WeaponSlot
@export var weight :=.5
const item_distance := 80

func _physics_process(delta: float) -> void:
	var move_direction := Vector2(Input.get_axis("Analog_L_Left", "Analog_L_Right"),Input.get_axis('Analog_L_Up','Analog_L_Down')).normalized()
	var aim_direction := Vector2(Input.get_axis("Analog_R_Left", "Analog_R_Right"),Input.get_axis('Analog_R_Up','Analog_R_Down')).normalized()

	if aim_direction:
		rotation = lerp_angle(rotation,aim_direction.angle(),weight)
		#flashlight.rotation = aim_direction.angle()
		#flashlight.position = aim_direction*item_distance
		#weapon_slot.rotation = aim_direction.angle()
		#weapon_slot.position = aim_direction*item_distance
	
		
	velocity = move_direction * SPEED
	move_and_slide()
	
func _process(delta: float) -> void:
	if Input.is_action_pressed("Trigger_R"):
		%WeaponSlot.fire()
