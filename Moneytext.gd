extends Label

var exponent=[3,6,9,12,15]
var vegek=["k","mil","bil","tril","quad"]
var vegek_hosszu=["Thousand","Million","Trillion","Quadrillion"]
var mert_egys="affection"
##TODO: lecserélni ezt egy fordítható objektumra

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(d):
	var tmp=int(self.text)
	var glonch=-1
	for e in exponent:
		if pow(10,e)<=tmp:
			glonch=exponent.find(e)
	if glonch==-1:
		self.text= str(tmp)+" "+mert_egys
	else:
		self.text=str(stepify(tmp/pow(10,exponent[glonch]),0.01)) + " " +vegek[glonch]+" " +mert_egys
