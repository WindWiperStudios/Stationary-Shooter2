extends Node

signal zeroHealth

@export var maxHealth := 10

var curHealth : int

#Sets health to max health on start up
func _ready():
	curHealth = maxHealth

#If current health drops below zero, send death signal
func _process(_delta):
	if curHealth <= 0:
		emit_signal("zeroHealth")

