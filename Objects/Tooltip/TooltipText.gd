extends Panel

func set_tooltip(tooltip_text: String):
	$Text.text = tooltip_text
	
	# Need to wait 2 frames, for the text rect_size to update correctly
	yield(get_tree(), "idle_frame") 
	yield(get_tree(), "idle_frame") 
	
	# The label size needs to be the same as the text. + Extra border
	self.rect_size = ($Text.rect_size) + Vector2(10,2) 
