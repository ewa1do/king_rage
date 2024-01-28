extends Node2D

@export var barra_progreso : ProgressBar
@export var barra_vida : ProgressBar
@onready var timer : Timer = $Timer
@export var player : Player

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
	#barra_progreso.value += 1
	#if barra_vida.value <= 0:
		#timer.stop()
		#print("Game Over baby")


