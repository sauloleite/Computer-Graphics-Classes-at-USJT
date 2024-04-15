extends Area2D

# Chamada a cada frame. 'delta' é o tempo decorrido desde o frame anterior.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	if body.name == 'Player':
		# Recarrega a cena atual
		get_tree().reload_current_scene()
	pass
