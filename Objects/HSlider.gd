extends HSlider


onready var hSlider = $"."

func _ready():
	hSlider.value = 100


func _process(delta):
	print(hSlider.value)
