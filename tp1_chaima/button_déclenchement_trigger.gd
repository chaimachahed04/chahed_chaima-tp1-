extends Button

func _on_pressed() -> void:

	var audio = get_node("../AudioStreamPlayer2D")

	audio.play()
 
