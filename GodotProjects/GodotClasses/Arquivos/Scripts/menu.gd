extends Control

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://Arquivos/Cenas/World.tscn")
	pass # Replace with function body.


func _on_multiplayer_pressed() -> void:
	get_tree().change_scene_to_file("res://Arquivos/Cenas/world_player_2.tscn")
	pass # Replace with function body.


func _on_exit_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.
