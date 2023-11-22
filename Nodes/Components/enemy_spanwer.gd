extends Node2D

@export var levels : Array[PackedScene]


func _ready():
	var level = levels[0].instantiate()
	add_child(level)
	
