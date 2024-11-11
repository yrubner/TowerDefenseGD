extends Node3D

@export var max_health: int = 5

var current_health: int:
	set(health_in):
		current_health = health_in
		print("health was changed")
		label_3d.text = str(current_health) + "/" + str(max_health)
		label_3d.modulate = Color.RED.lerp(Color.GREEN, float(current_health) / float(max_health))
		if current_health < 1:
			get_tree().reload_current_scene()
		
@onready var label_3d: Label3D = $Label3D

func _ready() -> void:
	current_health = max_health

func take_damage() -> void:
	print("damage dealt to base!")
	current_health -= 1
