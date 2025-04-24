extends Node2D

@export var grid_position: Vector2i = Vector2i(0, 0)
@export var tile_size: int = 64

var is_selected := false

func _ready():
	snap_to_grid()

func snap_to_grid():
	position = Vector2(grid_position.x * tile_size, grid_position.y * tile_size)

func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT:
			is_selected = !is_selected
			print("Unit at ", grid_position, " selected" if is_selected else " deselected")
