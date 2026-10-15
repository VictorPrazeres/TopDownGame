extends Node

var save_path = "user://save.json"

var settings: Dictionary = {
	"music": true,
	"sfx": true,
	"fullscreen": true
}


func save_data() -> void:
	var save = settings.duplicate()
	
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	var json_string = JSON.stringify(save)
	file.store_string(json_string)
	file.close()


func load_data() -> void:
	if not FileAccess.file_exists(save_path):
		return
	
	var file = FileAccess.open(save_path, FileAccess.READ)
	var json = file.get_as_text()
	var data = JSON.parse_string(json)
	file.close()
	
	settings = data
