extends Area2D
class_name Enemy

@export var moveSpeed : float
@onready var healthComponent = $HealthComponent

var walkDir = Vector2.DOWN


#On ready, connects the health component's signal to enemy death function
func _ready():
	healthComponent.zeroHealth.connect(enemy_death)

func _physics_process(delta):
	move(delta)

#Moves the enemy south
func move(delta):
	global_position += walkDir * moveSpeed * delta

#Actions to take on enemy death
func enemy_death()-> void:
	#Need to play death animation, lower amount of enemies alive
	#Need to add to score/money, possibly make a signal that gets sent to the enemy spawner
	#And when enemies left <= 0 it sets the game mode to succeeded and unlocks next stage
	queue_free()
