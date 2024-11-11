extends Node3D

@export var max_health: int = 5
@onready var label_3d: Label3D = $Label3D

func _ready() -> void:
	label_3d.text = str(max_health)

func take_damage() -> void:
	print("damage dealt to base!")
	max_health -= 1
	label_3d.text = str(max_health)
