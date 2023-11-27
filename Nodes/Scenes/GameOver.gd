extends Control




func _on_retry_button_pressed():
	#will reload current level when properly set up, for now it just refreshes the whole playscreen scene
	get_tree().reload_current_scene()
	get_tree().paused = false

func _on_main_menu_button_pressed()-> void:
	# Returns User to Main Menu
	get_tree().paused = false
	var mainMenuScene = load("res://Nodes/Scenes/MainMenu.tscn")
	get_tree().change_scene_to_packed(mainMenuScene)
