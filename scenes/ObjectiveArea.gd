extends Area2D

func _on_ObjectiveArea_body_entered(body):
	if (body.name == "GreenShip" and body is KinematicBody2D):
		print("Berhasil memarkirkan pesawat!")
		get_tree().change_scene("res://scenes/MainBrutalLevel.tscn")
	else:
		pass
