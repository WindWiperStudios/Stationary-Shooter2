extends Control





func _on_retry_button_pressed():
	# Restarts level
	pass 

func _on_main_menu_button_pressed()-> void:
	# Returns User to Main Menu
	var mainMenuScene = load("res://Nodes/Scenes/MainMenu.tscn")
	get_tree().change_scene_to_packed(mainMenuScene)
