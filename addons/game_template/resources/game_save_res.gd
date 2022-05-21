class_name GameSave
extends Resource


export(String) var player_name : String = ""

func save() -> void:
	var err : int = ResourceSaver.save(Globals.GAME_SAVE_PATH, self)
	if err == OK:
		SignalBus.emit_signal("game_saved")
	else:
		SignalBus.emit_signal("game_save_problem")
	
