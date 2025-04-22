extends GridContainer

const BOARD_SIZE := 8
const DARK_COLOR := Color(0.2, 0.2, 0.2)
const LIGHT_COLOR := Color(0.8, 0.8, 0.8)

func _ready():
	columns = BOARD_SIZE  # Set columns directly on self (GridContainer)

	for row in range(BOARD_SIZE):
		for col in range(BOARD_SIZE):
			var tile = ColorRect.new()
			tile.color = DARK_COLOR if (row + col) % 2 == 1 else LIGHT_COLOR
			tile.set_custom_minimum_size(Vector2(64, 64))  # Godot 4 way to set size
			add_child(tile)
