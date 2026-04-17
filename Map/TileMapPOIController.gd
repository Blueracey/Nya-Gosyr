extends TileMapLayer







func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.is_pressed():
			var global_clicked = event.position


			#get's the coordinates of the click 
			var pos_clicked = $'../TileMapGround'.local_to_map(global_clicked)

			#takes the coordinates of the click and checks what tile type is there 
			var pos_clicked_type = get_cell_atlas_coords(pos_clicked) 

			
			
			

			print(str(pos_clicked) + " " + str(pos_clicked_type))
