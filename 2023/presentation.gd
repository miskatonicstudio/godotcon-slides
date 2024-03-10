extends Control

var current_slide = 0


func _ready():
	update_slides()

func _input(event):
	if Input.is_action_just_pressed("next_slide"):
		current_slide = min(current_slide + 1, get_child_count() - 1)
		update_slides()
	if Input.is_action_just_pressed("previous_slide"):
		current_slide = max(current_slide - 1, 0)
		update_slides()
	if Input.is_action_just_pressed("toggle_fullscreen"):
		var window = get_window()
		if window.mode == Window.MODE_FULLSCREEN:
			window.mode = Window.MODE_WINDOWED
		else:
			window.mode = Window.MODE_FULLSCREEN
	if Input.is_action_just_pressed("ui_cancel"):
		get_window().mode = Window.MODE_WINDOWED

func update_slides():
	for child in get_children():
		child.visible = false
	get_children()[current_slide].visible = true
