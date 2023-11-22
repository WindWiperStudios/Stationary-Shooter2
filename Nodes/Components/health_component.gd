extends Node

signal zeroHealth

@export var maxHealth := 10

var curHealth : int

func _ready():
	curHealth = maxHealth


func _process(_delta):
	if curHealth <= 0:
		emit_signal("zeroHealth")

