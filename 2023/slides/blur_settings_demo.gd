extends Control

var current_shape = 0
var current_quality = 0


func _on_timer_shape_timeout():
	current_shape = (current_shape + 1) % 3
	RenderingServer.camera_attributes_set_dof_blur_bokeh_shape(current_shape)


func _on_timer_quality_timeout():
	current_quality = (current_quality + 1) % 4
	RenderingServer.camera_attributes_set_dof_blur_quality(current_quality, false)
