extends Node2D

@export var speed: float = 200.0
@onready var audio: AudioStreamPlayer2D = $"AudioStreamPlayer2D"

func _process(delta):
	var move = Vector2.ZERO
	
	if Input.is_key_pressed(KEY_D):
		move.x += 1
	if Input.is_key_pressed(KEY_A):
		move.x -= 1
	position += move * speed * delta

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		audio.play()
	
