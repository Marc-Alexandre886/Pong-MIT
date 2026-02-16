extends Control

# Web variables
var window: Window = Window.new();


# Global variables
var playScene:String = "uid://dqpge7gcicai6"
var settingsScene:String = "uid://d2ses80gugoiv"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_play_pressed() -> void:
	get_tree().change_scene_to_file(playScene)


func _on_settings_pressed() -> void:
	get_tree().change_scene_to_file(settingsScene)


func _on_quit_game_pressed() -> void:
	OS.has_feature("Web") if JavaScriptBridge.eval("window.close();") else get_tree().quit();
