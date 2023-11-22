extends Area2D

@export var moveSpeed : float
@onready var healthComponent = $HealthComponent

var walkDir = Vector2.DOWN


func _physics_process(delta):
	move(delta)


func move(delta):
	global_position += walkDir * moveSpeed * delta

func enemy_death()-> void:
	queue_free()

func _ready():
	healthComponent.zeroHealth.connect(enemy_death)
