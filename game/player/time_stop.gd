class_name TimeStop extends Node

func _on_time_stop_button_pressed():
	if Input.is_action_pressed("time_stop"):
		get_tree().paused = true
