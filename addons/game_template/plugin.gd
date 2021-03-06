tool
extends EditorPlugin


func _enter_tree():
	add_autoload_singleton(
			"Utils",
			"res://addons/game_template/utils.gd")
	add_autoload_singleton(
			"Transitions",
			"res://addons/game_template/transition/transition.tscn")
	add_autoload_singleton(
			"Game", 
			"res://addons/game_template/game.gd")
	add_autoload_singleton(
			"SignalBus", 
			"res://addons/game_template/game_managers/signal_bus.gd")
	add_autoload_singleton(
			"AudioManager", 
			"res://addons/game_template/game_managers/audio_manager.gd")
	add_autoload_singleton(
			"GameSettingsManager", 
			"res://addons/game_template/game_managers/game_settings_manager.gd")
#	if !ProjectSettings.has_setting("category/property_name"):
#		ProjectSettings.set("category/property_name", 0)
#	var property_info = {
#		"name": "category/property_name",
#		"type": TYPE_INT,
#		"hint": PROPERTY_HINT_ENUM,
#		"hint_string": "one,two,three"
#	}
#	ProjectSettings.add_property_info(property_info)
#

func _exit_tree():
	remove_autoload_singleton("Game")
	remove_autoload_singleton("Transitions")
	remove_autoload_singleton("Utils")
	remove_autoload_singleton("SignalBus")
	remove_autoload_singleton("AudioManager")
	remove_autoload_singleton("GameSettingsManager")
#	get_tree().root.get_node_or_null("Utils").queue_free()
