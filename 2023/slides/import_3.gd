extends Control

@onready var animation = $Slide/VBoxContainer/Contents/VideoStreamPlayer


func _on_visibility_changed():
	if visible and animation:
		animation.play()


func _on_video_stream_player_finished():
	animation.play()
