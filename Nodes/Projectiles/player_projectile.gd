extends Area2D

@export var speed : float
@export var particleSpeed : float
@export var bulletDamage : float

@onready var particle = $GPUParticles2D

var direction : Vector2


#On startup
func _ready():
	var mouse_position = get_viewport().get_mouse_position()
	direction = (mouse_position - global_position).normalized()


#Moves the bullet every physics frame
func _physics_process(delta):
	global_position += direction * speed * delta


#Detects when colliding with an enemy and does damage
func _on_area_entered(area : Enemy):
	area.healthComponent.curHealth -= bulletDamage
	queue_free()

#Deletes bullets when they leave the screen
func _on_screen_exited():
	queue_free()
