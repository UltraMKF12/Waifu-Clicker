extends Node

var money: int = 0
var keys: int = 0

func _process(_delta):
	if Input.is_action_just_pressed("Exit"):
		get_tree().quit()
	if Input.is_action_just_pressed("Fullscreen"):
		OS.window_fullscreen = !OS.window_fullscreen


func price_translate(number: int):
	var exponent=[3,6,9,12,15]
	var vegek=["K","M","B","T","Q"]
	#var vegek_hosszu=["Thousand","Million","Trillion","Quadrillion"]
	var mert_egys=""
	
	var tmp=number
	var glonch=-1
	for e in exponent:
		if pow(10,e)<=tmp:
			glonch=exponent.find(e)
	if glonch==-1:
		return str(tmp)+" "+mert_egys
	else:
		return str(stepify(tmp/pow(10,exponent[glonch]),0.01)) + "" +vegek[glonch]+" " +mert_egys
