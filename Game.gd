extends Node


var money: int = 92000
var keys: int = 2

onready var moneytext = $Screen/HBoxContainer/CharacterPart/Moneytext
onready var keytext = $Screen/HBoxContainer/CharacterPart/Keytext

func _ready():
	moneytext.text = str(money)
	keytext.text = str(keys)

func _process(delta):
	moneytext.text=str(money)
