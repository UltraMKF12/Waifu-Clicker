extends ProgressBar

func _on_Button_pressed():
	value = randi() % 101
	$AffectionText.text = str(value) + "%"
