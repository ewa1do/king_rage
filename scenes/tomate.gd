extends Area2D

@export var speed = 700



func _physics_process(delta):
	global_position.y += speed * delta

func _on_area_entered(area):
	pass
