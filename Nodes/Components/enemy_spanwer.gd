extends Node2D

@export var levels : Array[PackedScene]


#Currently just setting to the first level on load, as no other levels exist yet
func _ready():
	var level = levels[0].instantiate()
	add_child(level)
	
