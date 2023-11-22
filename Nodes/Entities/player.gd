extends Node2D

@export var shootCD := 1.0
@export var projectileScene : PackedScene

@onready var projectileContainer = $"../ProjectileContainer"
@onready var projectileSpawn = $ProjectileSpawn


var currentShotTimer := 1.0


func _process(delta):
	rotateSprite()
	if Input.is_action_pressed("shoot") and currentShotTimer >= shootCD:
		shoot()
	
	if currentShotTimer >= shootCD:
		pass
	else:
		currentShotTimer += delta


func rotateSprite():
	var mouse_position = get_viewport().get_mouse_position()
	var direction = (global_position - mouse_position).normalized()
	var new_angle =  PI + atan2(direction.y, direction.x) 
	rotation  = new_angle

func shoot():
	var projectile = projectileScene.instantiate()
	projectile.global_position = projectileSpawn.global_position
	projectileContainer.add_child(projectile)
	currentShotTimer = 0
