extends TileMapLayer

#global variable which contains map tile information 
var mapData = []
var indicatorPosition = Vector2(0,0)

#Updates which Tile map is selected by the player
#moving the inidicator is done in the SelectionIndicator Script 
func updateIndicatorPosition(Position):
	indicatorPosition = Position


	# Combine maps takes two lists that contain a series of Vector Coodinates and Map values and 
	# adds them together into a single list then pushes the combined list into a global variable 
	# The resulting list will be no longer than the original it combines based on 
	# when the Vector codinates match
	# map 0 is the bottom layer map 1 the not layer
func combineMap(map0,map1): 


	#if this variable is True that means the current loop interation resulted in a match
	var isCombine = false
	#loops through the base layer list
	for cells0 in map0:
			#loops through the Point of interest layer list (smaller list) and when it finds a vector that 
			#matches the base layer then it combines the resourse values of both
			for cells1 in map1:
				isCombine = false
				var combined_terrain= []
				if cells0[0] == cells1[0]:
					isCombine = true
					combined_terrain = cells1[1]
					#adds the land value of the base tile to the Point of interest tile 
					combined_terrain["Faith"] = combined_terrain["Faith"]+ cells0[1]["Faith"]
					combined_terrain["Kindred"] = combined_terrain["Kindred"]+ cells0[1]["Kindred"]
					combined_terrain["Material"] = combined_terrain["Material"]+ cells0[1]["Material"]
					
			
			
					#appends the combined file to the map data list so that it can be accessed anywhere 
					mapData.append([cells0[0], combined_terrain])
					break
			#if it does not find a pair in the second list it just appends the base layer
			if isCombine == false:
				mapData.append(cells0)

					
					
					
	print(mapData)

	


#interates through the map layer provided and defines each tile
func buildMap(tilemap:TileMapLayer, layer):

	#get's all the cells with a value in the map
	var usedCells = tilemap.get_used_cells()
	
	#creates a array with a vector and dictionary inside
	# vector being coordinates and the dictionary containg the resourses atached to the tile layer
	#this will not result in a usable map because maps have two layers with resources andd this only checks one layer
	var map = []
	#interates through each tile and assigns resourses
	for cell in usedCells:
		#checks the tile type 
		var atlasCords = tilemap.get_cell_atlas_coords(cell)
		#calls a function that defines the resourses each type of tile can have 
		var mapDetail = [cell,MapFunctions.findAtlas(atlasCords)]
		map.append(mapDetail)
	return map
	
	
	
	
