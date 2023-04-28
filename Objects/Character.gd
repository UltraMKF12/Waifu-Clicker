extends Area2D

var inside = false

func _ready():
	$AREA.modulate.a = 0

func _process(_delta):
	if inside:
		if Input.is_action_just_pressed("left_click"):
			Gamemanager.money += 20
			if(randi() % 4 == 0):
				Gamemanager.affection += 4

func _on_AREA_mouse_entered():
	inside = true


func _on_AREA_mouse_exited():
	inside = false
