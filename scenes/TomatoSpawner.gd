extends Node2D

var tomato_scene = preload("res://scenes/tomate.tscn")

@onready var spawn_positions = $SpawnPositions 

func _on_timer_timeout():
	spawn_tomato()

func spawn_tomato():
	var spawn_positions_list = spawn_positions.get_children()
	var random_spawn_position = spawn_positions_list.pick_random()
	
	var tomato_instance = tomato_scene.instantiate()
	tomato_instance.global_position = random_spawn_position.global_position
	add_child(tomato_instance)
