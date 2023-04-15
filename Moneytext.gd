extends Label

#TODO: lecserélni ezt egy fordítható objektumra

export var value: int

var exponent=[3,6,9,12,15]
var vegek=["K","M","B","T","Q"]
#var vegek_hosszu=["Thousand","Million","Trillion","Quadrillion"]
var mert_egys="Dollarium"

func _process(delta):
	var tmp=value
	var glonch=-1
	for e in exponent:
		if pow(10,e)<=tmp:
			glonch=exponent.find(e)
	if glonch==-1:
		self.text= str(tmp)+""+mert_egys
	else:
		self.text=str(stepify(tmp/pow(10,exponent[glonch]),0.01)) + "" +vegek[glonch]+" " +mert_egys