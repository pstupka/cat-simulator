extends Node

# Game ettings manager. A singleton scripts for managing game settings and game save files

# save game and settings resources
var game_save : GameSave
var game_settings : GameSettings


func _ready() -> void:
	load_save_game()
	load_settings()
	
	
func load_save_game() -> void:
	var dir : Directory = Directory.new()
	if dir.file_exists(Globals.GAME_SAVE_PATH):
		game_save = load(Globals.GAME_SAVE_PATH)
	else:
		game_save = GameSave.new()


func load_settings() -> void:
	var dir : Directory = Directory.new()
	if dir.file_exists(Globals.SETTINGS_PATH):
		game_settings = load(Globals.SETTINGS_PATH)
	else:
		game_settings = GameSettings.new()
