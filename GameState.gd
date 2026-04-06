extends TileMapLayer

var mapData = [1,2]
# Called when the node enters the scene tree for the first time.


func _ready():
	print("Game state loaded")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
	
	
func combineMap(map0,map1): 
	print("Combine")
	print(map0)
	print(map1)


#interates through the map layer provided and defines each tile
func buildMap(tilemap:TileMapLayer, layer):
	print("build map running")
	var usedCells = tilemap.get_used_cells()
	var count = 0
	var map = []
	for cell in usedCells:

		var atlasCords = tilemap.get_cell_atlas_coords(cell)
		
		var mapDetail = [cell,MapFunctions.findAtlas(atlasCords)]
		map.append(mapDetail)
		

		count = count+1
		

	return map
