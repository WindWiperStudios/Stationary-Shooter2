extends Area2D
class_name Enemy

signal attacking

@export var moveSpeed : float
@export var attackCD = 1.0
@export var damage = 10

@onready var healthComponent = $HealthComponent

var walkDir = Vector2.DOWN
var isAttacking = false
var timeSinceAttacked


#On ready, connects the health component's signal to enemy death function
func _ready():
	healthComponent.zeroHealth.connect(enemy_death)
	timeSinceAttacked = attackCD

func _process(delta):
	if timeSinceAttacked < attackCD:
		timeSinceAttacked += delta

func _physics_process(delta):
	#If enemy hasn't reached wall yet, continue walking south
	if isAttacking == false:
		Move(delta)
	else:
		if timeSinceAttacked >= attackCD:
			Attack()
			timeSinceAttacked = 0

#Moves the enemy south
func Move(delta):
	global_position += walkDir * moveSpeed * delta

func Attack():
	emit_signal("attacking")

#Actions to take on enemy death
func enemy_death()-> void:
	#Need to play death animation, lower amount of enemies alive
	#Need to add to score/money, possibly make a signal that gets sent to the enemy spawner
	#And when enemies left <= 0 it sets the game mode to succeeded and unlocks next stage
	queue_free()


func _on_area_entered(area : Wall):
	if area != null:
		isAttacking = true
