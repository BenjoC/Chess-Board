extends GridContainer

const GRID_COLUMNS := 5
const GRID_ROWS := 10
const TILE_SIZE := Vector2(64, 64)

func _ready():
	columns = GRID_COLUMNS

	for i in range(GRID_ROWS * GRID_COLUMNS):
		var tile = ColorRect.new()
		var row = i / GRID_COLUMNS
		var col = i % GRID_COLUMNS

		tile.color = Color(0.2, 0.2, 0.2) if (row + col) % 2 == 1 else Color(0.8, 0.8, 0.8)
		tile.set_custom_minimum_size(TILE_SIZE)
		add_child(tile)
