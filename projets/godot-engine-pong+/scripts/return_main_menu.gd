extends Node

var mainMenuScene:String = "uid://dkr7d5hfn7wpk"

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file(mainMenuScene)
