extends Area2D
class_name Wall

@onready var healthComponent = $HealthComponent

func _ready():
	healthComponent.zeroHealth.connect(WallHealthZero)

func wall_destruction():
	#Probably shouldn't destroy the wall, just degrade it's look over time depending
	#on the percentage of health missing.
	queue_free()

func WallHealthZero():
	#Display game over screen
	print("Wall has 0 health.")
	#Temporarily setting health back for testing
	healthComponent.curHealth = healthComponent.maxHealth

