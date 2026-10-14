class_name MainMenu extends Control

@onready var main_buttons: Control = $MainButtons
@onready var settings_buttons: Control = $SettingsButtons


func _on_play_button_pressed() -> void:
	Transition.transition_to("res://Scenes/UI/CharacterSelection/character_selection.tscn")


func _on_settings_button_pressed() -> void:
	var tween := create_tween()
	tween.tween_property(main_buttons, "global_position:y", 350, 0.2)
	tween.tween_interval(0.1)
	tween.tween_property(settings_buttons, "global_position:x", 145, 0.3)


func _on_quit_button_pressed() -> void:
	pass


func _on_music_button_pressed() -> void:
	pass 


func _on_sfx_button_pressed() -> void:
	pass 


func _on_window_button_pressed() -> void:
	pass


func _on_back_button_pressed() -> void:
	var tween := create_tween()
	tween.tween_property(settings_buttons, "global_position:x", 558, 0.3)
	tween.tween_interval(0.1)
	tween.tween_property(main_buttons, "global_position:y", 115, 0.2)
