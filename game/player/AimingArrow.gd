extends Node2D

@export_range(0, 360, 1) var arc_degrees: int = 90 # Total sweep angle
@export var speed = 1.5 # Speed of oscillation

var time := 0.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var parent = get_parent()
	if parent.has_node("Sprite2D"):
		var sprite = parent.get_node("Sprite2D")
		scale.x = sign(sprite.scale.x)
	time += delta * speed
	var angle_rad = deg_to_rad(arc_degrees / 2) * sin(time)
	rotation = angle_rad * sign(scale.x)
