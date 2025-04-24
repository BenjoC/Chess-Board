extends GridContainer

@export var GRID_COLUMNS := 8
@export var GRID_ROWS := 8
@export var TILE_SIZE := Vector2(64, 64)
@export var colour_a: Color = Color.BLACK
@export var colour_b: Color = Color.WHITE


func _ready():
	columns = GRID_COLUMNS

	for i in range(GRID_ROWS * GRID_COLUMNS):
		var tile = ColorRect.new()
		var row = i / GRID_COLUMNS
		var col = i % GRID_COLUMNS

		tile.color = colour_a if (row + col) % 2 == 1 else colour_b
		tile.set_custom_minimum_size(TILE_SIZE)
		add_child(tile)
