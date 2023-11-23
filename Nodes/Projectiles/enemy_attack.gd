extends Area2D

#Sets how long attack should exist
@export var aliveTime : float

var timeAlive = 0.0
var damage
#Checks if attack has done damage once, so that it doesn't hit more than once
var doneDamage = false

func _ready():
	pass

#Checks if attack has been alive too long and deletes it
func _process(delta):
	if timeAlive < aliveTime:
		timeAlive += delta
	else:
		queue_free()



#If inside the wall, will lower health by damage amount and set doneDamage flag
func _on_area_entered(area : Wall):
	if (area != null) and doneDamage == false:
		area.healthComponent.curHealth -= damage
		doneDamage = true
