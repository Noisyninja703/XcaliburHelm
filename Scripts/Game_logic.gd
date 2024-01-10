extends Node
const cardBase = preload("res://Scenes/card_temp.tscn")
const cardSize = Vector2(125, 175)
var cardSelected = []	
var deckSize = 0
# Init player hands
var cplayer1_hand = []
var cplayer2_hand = []
var deckbase = []

#region Deck and Game Mechanics
# Shuffle deck fucntion -> takes current deck as arg
func shuffle_deck(deck):
	deck.shuffle()
	return(deck)

# deal card fucntion -> takes current hand, deck, and num of cards to be dealt as args
func deal_card(hand, deck, num):
	for i in range(num):
		var card = deck.pop_back()
		hand.append(card)
	return(hand)

# print hand function -> takes current hand as arg
func print_hand(hand, player):
	print(player)
	print(hand)
	print()

func start_game(hand, deck):
	# shuffle the deck
	shuffle_deck(deck)
	# deal cards to the player
	deal_card(hand, deck, 3)
	#print their hand
	print_hand(hand, "Player1")
#endregion

#region GD functions
func _ready(num=1):
	# Init player deck
	# Get decks from the player object as refs
	var player1_deck = $"../Player1/Player1_deck"
	var player2_deck = $"../Player2/Player2_deck"
	
	# Use refs to init deck objects for gameplay
	var cplayer1_deck = player1_deck.player1_deck
	var cplayer2_deck = player2_deck.player2_deck
	var cplayer_deckbase = cplayer1_deck
	cplayer_deckbase += cplayer2_deck
	deckbase = cplayer_deckbase

	# Shuffle decks
	shuffle_deck(cplayer1_deck)
	shuffle_deck(cplayer2_deck)
	
	
	# Deal starter hands
	deal_card(cplayer1_hand, cplayer1_deck, 3)
	deal_card(cplayer2_hand, cplayer2_deck, 3)
	
	print_hand(cplayer1_hand, "Player 1")
	display_player_hand("player1", cplayer1_hand)
	print_hand(cplayer2_hand, "Player 2")
	display_player_hand("player2", cplayer2_hand)
	print(cplayer_deckbase)

	#test player hand
	deckSize = cplayer1_hand.size()

func display_player_hand(player, hand):
	if player == "player1":
		var coor_start = Vector2(0,350)
		for card in hand:
			var new_card = cardBase.instantiate()
			cardSelected = card #random card position
			new_card.cardBaseNow = deckbase
			new_card.cardId = cardSelected[2]
			new_card.position = coor_start
			new_card.scale *= cardSize/new_card.size #scale card size
			$"../Player1/Player1_hand".add_child(new_card)
			print(new_card)
			coor_start += Vector2(140, 0)
			
	if player == "player2":
		var coor_start = Vector2(0,0)
		for card in hand:
			var new_card = cardBase.instantiate()
			cardSelected = card #random card position
			new_card.cardBaseNow = deckbase
			new_card.cardId = cardSelected[2]
			new_card.position = coor_start
			new_card.scale *= cardSize/new_card.size #scale card size
			$"../Player2/Player2_hand".add_child(new_card)
			print(new_card)
			coor_start += Vector2(140, 0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
#endregion
	


