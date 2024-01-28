extends Control

@onready var lives_left = $LivesLeft

func set_lives(amount):
	lives_left.text = str(amount)
