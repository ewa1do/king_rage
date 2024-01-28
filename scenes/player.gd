extends CharacterBody2D
#nombre de la clase para tenerlo como tipo de dato
class_name Player

const player_speed = 2000
@export var vida : int = 100

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	player_movement()
	set_character_limit_in_row_axis()
	
func setVelocity(axis):
	velocity = Vector2(axis, 0)
	return velocity

func player_movement():
	if Input.is_action_pressed("move_left"):
		setVelocity(-player_speed)
	if Input.is_action_pressed("move_right"):
		setVelocity(player_speed)
	if Input.is_action_just_released("move_left") || Input.is_action_just_released("move_right"):
		setVelocity(0)
	move_and_slide()

func set_character_limit_in_row_axis():
	var limitXAxis = get_viewport_rect().size[0]
	if global_position.x <= 18:
		global_position.x = 18
	if global_position.x >= limitXAxis - 70:
		global_position.x = limitXAxis - 70
		

func get_vida():
	return vida
