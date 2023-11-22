extends Area2D

@export var moveSpeed : float

var walkDir = Vector2.DOWN


func _physics_process(delta):
	move(delta)


func move(delta):
	global_position += walkDir * moveSpeed * delta
