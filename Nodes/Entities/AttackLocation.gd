extends Node2D

#Grabs the enemy that is attacking
@onready var parent = $".."

#Scene for attack you want, allows different attacks in the future
@export var attackScene : PackedScene

#Connects to the attacking signal from Enemy class
func _ready():
	parent.attacking.connect(Attack)

#Instatiates the attackScene, sets its damage to the amount set in Enemy class
#Adds attack as a child of this node, and sets its position here too
func Attack():
	var attack = attackScene.instantiate()
	attack.damage = parent.damage
	self.add_child(attack)
	attack.global_position = global_position
