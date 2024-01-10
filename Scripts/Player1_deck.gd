extends Node

# Setup player deck
# deck -> card -> {Card_name: [Atk, Def, Move]
var player1_deck = [
					["Knight", [2,2,2], "HK01"],
					["Archer", [4,1,3], "HA01"],
					["Barbarian", [1,4,1], "HB01"],
					["Knight", [2,2,2], "HK01"],
					["Archer", [4,1,3], "HA01"],
					["Barbarian", [1,4,1], "HB01"],
					["Knight", [2,2,2], "HK01"],
					["Archer", [4,1,3], "HA01"],
					["Barbarian", [1,4,1], "HB01"]
				   ]
					
# Init current deck and player hand
#var current_deck = player1_deck
#var current_hand = []
#
## Shuffle deck fucntion -> takes current deck as arg
#func shuffle_deck(deck):
	#deck.shuffle()
	#return(deck)
#
## deal card fucntion -> takes current hand, deck, and num of cards to be dealt as args
#func deal_card(hand, deck, num):
	#for i in range(num):
		#var card = deck.pop_back()
		#hand.append(card)
	#return(hand)
#
## print hand function -> takes current hand as arg
#func print_hand(hand):
	#print(hand)
#
#func start_game(hand, deck):
	## shuffle the deck
	#shuffle_deck(deck)
	## deal cards to the player
	#deal_card(hand, deck, 3)
	##print their hand
	#print_hand(hand)

# Called when the node enters the scene tree for the first time.
func _ready(num=1):
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	


