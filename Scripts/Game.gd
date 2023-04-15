extends Node


export var money: int = 92000
var keys: int = 2

onready var moneytext = $Screen/TwoPartDivision/CharacterPart/MoneyTextBorder/Moneytext
onready var keytext = $Screen/TwoPartDivision/CharacterPart/Keytext

func _ready():
	moneytext.text = Gamemanager.price_translate(money)
	keytext.text = str(keys)

func _process(_delta):
	moneytext.text = Gamemanager.price_translate(money)
