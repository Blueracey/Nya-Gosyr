extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	print("ran")
	
	var map0 = GameState.buildMap($"TileMapGround", 1)
	var map1 = GameState.buildMap($"TileMapPOI", 0)
	GameState.combineMap(map0,map1)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
