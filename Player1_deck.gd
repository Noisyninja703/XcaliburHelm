extends Node

# Setup player deck
# deck -> card -> {Card_name: [Atk, Def, Move]
var player1_deck = [
					["Knight", [2,2,2]],
					["Archer", [4,1,3]],
					["Barbarian", [1,4,1]],
					["Knight", [2,2,2]],
					["Archer", [4,1,3]],
					["Barbarian", [1,4,1]],
					["Knight", [2,2,2]],
					["Archer", [4,1,3]],
					["Barbarian", [1,4,1]]
				   ]
					

var current_deck = player1_deck
var current_hand = []

func shuffle_deck(deck):
	deck.shuffle()
	return(deck)

func deal_card(hand, deck, num):
	for i in range(num):
		var card = deck.pop_back()
		hand.append(card)
		num -= 1
	return(hand)

func print_hand(hand):
	print(hand)

func start_game(hand, deck):
	shuffle_deck(deck)
	deal_card(hand, deck, 3)
	print_hand(hand)

# Called when the node enters the scene tree for the first time.
func _ready(num=10):
	for i in range(num):	
		current_deck = player1_deck
		current_hand = []
		start_game(current_hand, current_deck)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	


