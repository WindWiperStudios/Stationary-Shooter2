extends Area2D
class_name Wall

@onready var healthComponent = $HealthComponent


func _ready():
	healthComponent.zeroHealth.connect(wall_destruction)
	
func wall_destruction():
	queue_free()
	
func wallDamage(value):
	area.healthComponent.curHealth -= value
	
