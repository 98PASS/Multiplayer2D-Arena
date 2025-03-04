extends Node2D

func _ready() -> void:
	%Players.add_child(load("res://Player/Player2D.tscn").instantiate())
	var player = $%Players.get_child(0)
	player.add_child(Camera2D.new())
