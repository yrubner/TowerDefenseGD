extends Area3D

var direction: Vector3 = Vector3.FORWARD

@export var speed: float = 30.0

func _physics_process(delta: float) -> void:
	position += direction * (speed * delta)

func _on_timer_timeout() -> void:
	queue_free()
