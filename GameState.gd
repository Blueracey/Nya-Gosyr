extends TileMapLayer

var mapData = [1,2]
# Called when the node enters the scene tree for the first time.


func _ready():
	print("Game state loaded")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func buildMap(tilemap:TileMapLayer, layer):
	print(layer)
	print(tilemap)
	var usedCells = tilemap.get_used_cells()
	var count = 0
	var map = []
	for cell in usedCells:
		#print(cell)
		var atlasCords = tilemap.get_cell_atlas_coords(cell)
		
		var mapDetail = [cell,MapFunctions.findAtlas(atlasCords)]
		map.append(mapDetail)
		

		count = count+1
		
	print(map)
	return map
