extends Node2D

@export var barra_progreso : ProgressBar
@export var barra_vida : ProgressBar
@onready var timer : Timer = $Timer
@export var player : Player

var lives = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	#pass # Replace with function body.
	timer.start()
	barra_progreso.value = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#barra_vida.value = player.get_vida()
	pass

func _on_timer_timeout():
	pass

func on_die():
	queue_free()

func _on_player_took_damage():
	lives -= 1
	if lives == 0:
		on_die()
