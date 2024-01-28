class_name GameOver
extends Control

@onready var retry_button = $VBoxContainer/seperador2/Button
@onready var menu_button = $VBoxContainer/seperador2/Button2
@onready var next_game =preload("res://scenes/game.tscn") as PackedScene
@onready var next_room =preload("res://menu.tscn") as PackedScene

func _ready():
	retry_button.button_down.connect(on_start_pressed)
	menu_button.button_down.connect(on_exit_pressed)
	
func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(next_game)
	
func on_exit_pressed() -> void:
	get_tree().change_scene_to_packed(next_room)
