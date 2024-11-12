extends Node3D

@export var turret: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var new_turret = turret.instantiate()
	add_child(new_turret)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
