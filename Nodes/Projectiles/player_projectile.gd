extends Area2D

@export var speed : float
@export var particleSpeed : float
@export var bulletDamage : float

@onready var particle = $GPUParticles2D

var direction : Vector2

func _ready():
	var mouse_position = get_viewport().get_mouse_position()
	direction = (mouse_position - global_position).normalized()

func _physics_process(delta):
	global_position += direction * speed * delta


func _on_area_entered(area):
	print(area.name , "_hit")
	area.healthComponent.maxHealth -= bulletDamage
