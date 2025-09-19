extends Button

func _on_toggled(button_pressed: bool) -> void:

	var audio = get_node("../chat/AudioStreamPlayer2D")

	if button_pressed:

		audio.play()

	else:

		audio.stop()
 
