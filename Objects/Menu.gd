extends Control

onready var kilepGomb = $Panel/kilepesGomb

func _ready():
	pass # Replace with function body.

func _process(delta):
	pass
	




func _on_kilepesGomb_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_ToolButton_pressed():
	print("options")
