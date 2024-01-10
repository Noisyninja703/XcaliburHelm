extends MarginContainer
#import the database
#@onready var cardBase = preload("res://Game_logic.gd")
#@onready var cardBaseTEMP = cardBase.new() #this just cus gd4 is irritating
#@onready var cardBaseNow = cardBaseTEMP.deckbase#this just cus gd4 is irritating
var cardBaseNow = []
var cardId = "HK01" #input the ID of the card
@onready var cardInfo = []
@onready var cardImg = str("res://Assets/Units/", cardId, ".png")

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in cardBaseNow:
		if i[2] == cardId:
			cardInfo = i
			break
	
	print(cardInfo)
	var cardSize = size
	var imgSize = Vector2(128, 128) #standard size to make all card artworks
	$Border.scale *= cardSize/$Border.texture.get_size() #scaling to fit the card
	$CardArt.texture = load(cardImg)
	$CardArt.scale *= imgSize/$CardArt.texture.get_size()#scaling to fit the card
	$CardArt.position.x = 36 #place card middle
	
	var atk = str(cardInfo[1][0])
	var def = str(cardInfo[1][1])
	var cost = str(cardInfo[1][2])
	var name = str(cardInfo[0])
	var desc = str(cardInfo[2])
	$Bars/TopBar/Name/CenterContainer/Name.text = name
	$Bars/TopBar/Cost/CenterContainer/Name.text = cost
	$Bars/MidGap/NinePatchRect/HFlowContainer/Desc.text = "Description \n" + desc
	$Bars/LowGap/TopBar/Attack/CenterContainer/Atk.text = "Attack: " + atk
	$Bars/LowGap/TopBar/Defence/CenterContainer/Def.text = "Defence: " + def
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
