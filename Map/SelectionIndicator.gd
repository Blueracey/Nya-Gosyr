extends CharacterBody2D


#detects when the player clicks on a Maplayer and moves the indicator to that location 
#centered on the hexagon 
#also updates the global variable for what hex is being looked at 
func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.is_pressed():
			#decalres where the location is clicked 
			var global_clicked = event.position
			#finds where on the Ground Layer that click was and saves it 
			var cords = $'../TileMapGround'.local_to_map(global_clicked) 
			#Updates the global variable for where the indicator is  
			GameState.updateIndicatorPosition(cords)
			#Changes the value back to a global corodinate rather than using the map as a referance
			#though this time the value is centered on the hex rather than actually being where the click
			#happend 
			cords = $'../TileMapGround'.map_to_local(cords)

			
			
			#Updates the global position of the selection indicator 
			global_position = cords
