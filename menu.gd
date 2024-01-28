class_name MainMenu
extends Control

@onready var start_button = $MarginContainer/VBoxContainer/separador2/Button
@onready var exit_button = $MarginContainer/VBoxContainer/separador2/Button2
@onready var next_room =preload("res://scenes/game.tscn") as PackedScene

func _ready():
	start_button.button_down.connect(on_start_pressed)
	exit_button.button_down.connect(on_exit_pressed)
	
func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(next_room)
	
func on_exit_pressed() -> void:
	get_tree().quit()
