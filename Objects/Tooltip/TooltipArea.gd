extends Control

#When the mouse enters the area, a tooltip needs to be created on the position the mouse entered.

export(String, MULTILINE) var tooltip_text

var tooltip_reference = preload("res://Objects/Tooltip/TooltipText.tscn")
var tooltip_obj


func _ready():
	#When the game runs, the tooltip are should not be visible
	self.modulate.a = 0
	set_process(false)


#While inside the are, the text should follow the mouse
#Need to make sure the tooltip always stays on screen
func _process(_delta):
	tooltip_obj.rect_position = get_global_mouse_position()
	
	#Because 2D stretch mode, the game always runs on (1280 x 720). Even if the window is resized.
	var screen_size = Vector2(ProjectSettings.get("display/window/size/width"), ProjectSettings.get("display/window/size/height"))
	var max_tooltip_size = screen_size - tooltip_obj.rect_size
	var mouse_position = get_global_mouse_position()
	
	#Tooltip need to be at the middle of the mouse vertically
	
	tooltip_obj.rect_position.x = clamp(mouse_position.x, 0, max_tooltip_size.x)
	tooltip_obj.rect_position.y = clamp(mouse_position.y, 0, max_tooltip_size.y)
	

func _on_TooltipArea_mouse_entered():
	tooltip_obj = tooltip_reference.instance()
	get_parent().add_child(tooltip_obj) #Need to add to the parent because self.module affects the visibility of the tooltip
	tooltip_obj.set_tooltip(tooltip_text)
	set_process(true)


func _on_TooltipArea_mouse_exited():
	tooltip_obj.queue_free()
	set_process(false)
