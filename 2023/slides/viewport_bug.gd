extends Control

@onready var animation = $Slide/VBoxContainer/Contents/HBoxContainer/SubViewportContainer/AnimationPlayer

func _on_visibility_changed():
	if visible and animation:
		animation.stop()
		animation.play("viewport_settings")
