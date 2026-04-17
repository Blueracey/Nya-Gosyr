extends TileMapLayer




func findAtlas(Cords):
	

	match Cords:
		Vector2i(1,0),Vector2i(2,0),Vector2i(3,0),Vector2i(4,0): 
			return genBarran()
		Vector2i(5,0),Vector2i(6,0),Vector2i(7,0):
			return genPlain()
		Vector2i(0,1),Vector2i(1,1),Vector2i(2,1),Vector2i(4,1),Vector2i(5,1),Vector2i(19,5),Vector2i(20,5):
			return genForest()
		Vector2i(3,1),Vector2i(3,2):
			return getHeavyForest()
		_:
			return "error"
	
	
	
func genBarran():
		var Barran = {
			"Faith": 5,
			#randi generaters a number up to the num 
			"Kindred" : randi() %16 +35,
			"Material" : randi() %5 + 15,
			"Terrain Score" : 2 ,

				
			
		}
		return Barran
		
func genPlain():
	var Plain = {
			"Faith": 5,
			#randi generaters a number up to the num 
			"Kindred" : randi() %16 +45,
			"Material" : randi() %5 + 10,
			"Terrain Score" : 0 ,

				
			
		}
	return Plain
		
		
		
func genForest():
	var Forest = {
			"Faith": 1,
			#randi generaters a number up to the num 
			"Kindred" : randi() %5 +5,
			"Material" : randi() %10 + 10,
			"Terrain Score" : 6 ,
			"Ancient Wood" : 1
				}
	return Forest
	
			
			
			
func getHeavyForest():
	var Plain = {
			"Faith": 1,
			#randi generaters a number up to the num 
			"Kindred" : randi() %5,
			"Material" : randi() %5 + 30,
			"Terrain Score" : 10 ,
			"Ancient Wood" : 2 

				
			
		}
	return Plain
		
