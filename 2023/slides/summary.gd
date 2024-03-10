extends Control


func _on_visibility_changed():
	if visible:
		$Slide/VBoxContainer/Contents/AnimationPlayer.play("reveal")
