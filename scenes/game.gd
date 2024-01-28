extends Node2D

@onready var player = $Player
@onready var hud = $UI/HUD
@onready var timer : Timer = $Timer

var lives = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	#pass # Replace with function body.
	#timer.start()
	hud.set_lives(lives)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#barra_vida.value = player.get_vida()
	pass

func _on_timer_timeout():
	pass

func game_over():
	queue_free()

func _on_player_took_damage():
	lives -= 1
	hud.set_lives(lives)
	if lives == 0:
		game_over()
