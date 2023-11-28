extends Control





func _on_next_level_button_pressed():
	pass # Replace with function body.


func _on_upgrades_button_pressed():
	pass # Replace with function body.


func _on_main_menu_button_pressed()-> void:
	# Returns User to Main Menu
	get_tree().paused = false
	var mainMenuScene = load("res://Nodes/Scenes/MainMenu.tscn")
	get_tree().change_scene_to_packed(mainMenuScene)
