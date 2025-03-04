extends Control
@onready var button_play: Button = $VBoxContainer/Button_Play

func _ready() -> void:
	button_play.grab_focus()
	for child in $VBoxContainer.get_children():
		child.connect('pressed',_click_sound)

func _on_button_play_pressed() -> void:
	get_tree().change_scene_to_file("res://Menus/Network/Netplay.tscn")


func _on_button_continue_pressed() -> void:
	pass # Replace with function body.


func _on_button_options_pressed() -> void:
	pass # Replace with function body.


func _on_button_exit_pressed() -> void:
	get_tree().quit()

func _click_sound()->void:
	GlobalAudio.play()
