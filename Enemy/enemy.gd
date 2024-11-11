extends PathFollow3D

@onready var entity_name_label: Label3D = $EntityNameLabel

@export var speed: float = 2.5

@onready var base = get_tree().get_first_node_in_group("base")

var entity_name: String
var cool_number: int

func _ready() -> void:
	entity_name = "Enemy"
	cool_number = 42
	entity_name_label.text = entity_name + " - " + str(cool_number)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	progress += delta * speed
	if progress_ratio == 1.0:
		base.take_damage()
		set_process(false)
		
