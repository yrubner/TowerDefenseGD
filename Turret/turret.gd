extends Node3D

@export var projectile: PackedScene

var enemy_path: Path3D

@onready var barrel: MeshInstance3D = $TurretBase/TurretTop/Visor/Barrel

func _physics_process(delta: float) -> void:
	var enemy = enemy_path.get_children().back()
	look_at(enemy.global_position, Vector3.UP, true)

func _on_timer_timeout() -> void:
	var shot = projectile.instantiate()
	add_child(shot)
	shot.global_position = barrel.global_position
	shot.direction = global_transform.basis.z
	
