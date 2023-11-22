extends Control




func _on_play_button_pressed()-> void:
	var playscreen = load("res://Nodes/Scenes/playscreen.tscn")
	get_tree().change_scene_to_packed(playscreen)

func _on_quit_button_button_up():
	get_tree().quit()


func _on_options_button_pressed():
	pass # Replace with function body.
