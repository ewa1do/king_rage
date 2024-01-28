extends Node2D

@onready var player = $Player
@onready var hud = $UI/HUD
@onready var timer : Timer = $Timer

@onready var progress_bar : ProgressBar = $Progreso

var next_room =preload("res://scenes/game_over.tscn") as PackedScene

# Game over scene change
func change_scene():
	pass

var lives = 3


# Called when the node enters the scene tree for the first time.
func _ready():
	#pass # Replace with function body.
	#timer.start()
	hud.set_lives(lives)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	progress_bar.value += 0.03
	
func _on_timer_timeout():
	pass
	#print("TIMEOUT=>", timer)

func game_over():
	get_tree().change_scene_to_packed(next_room)

func _on_player_took_damage():
	lives -= 1
	hud.set_lives(lives)
	if lives == 0:
		game_over()
