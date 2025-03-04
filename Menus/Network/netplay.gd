extends Control
@onready var button_offline: Button = $VBoxContainer/Button_Offline

func _ready() -> void:
	button_offline.grab_focus()

func _on_button_offline_pressed() -> void:
	get_tree().change_scene_to_file("res://GameComposition/Cenas e Níveis/Jardim/Jardim.tscn")


func _on_button_host_pressed() -> void:
	pass # Replace with function body.


func _on_button_join_pressed() -> void:
	pass # Replace with function body.


func _on_button_cancel_pressed() -> void:
	get_tree().change_scene_to_file("res://Menus/Principal/MainMenu.tscn")
