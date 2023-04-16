extends Node

onready var moneytext = $Screen/TwoPartDivision/CharacterPart/Money/MoneyText
onready var keytext = $Screen/TwoPartDivision/CharacterPart/Keys/KeyText
onready var affection_bar = $Screen/TwoPartDivision/CharacterPart/AffectionBar
onready var affection_text = $Screen/TwoPartDivision/CharacterPart/AffectionBar/AffectionText


func _ready():
	moneytext.text = Gamemanager.price_translate(Gamemanager.money)
	keytext.text = str(Gamemanager.keys)
	affection_set(0)
	
	
func _process(_delta):
	moneytext.text = Gamemanager.price_translate(Gamemanager.money)


func affection_set(value: int):
	affection_bar.value = value
	affection_text.text = str(affection_bar.value) + "%"


func affection_add(value: int):
	affection_bar.value += value
	affection_text.text = str(affection_bar.value) + "%"
