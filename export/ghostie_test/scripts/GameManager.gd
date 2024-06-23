extends Node

var dialogue_manager = {
	"area_clue_1" : {
		"text": "I remember.",
		"is_seen": false,
	},
	"area_clue_2" : {
		"text" : "I remember..._I remember imagining.",
		"is_seen": false,
	},
	"area_clue_3" : {
		"text" : "I hate th– hated the world we created._Hated the selfishness, the destruction, the alienation.",
		"is_seen": false,
	},
	"area_clue_4" : {
		"text" : "I remember friends playing together,_imagining alternative worlds and alternative futures,_bringing them to life in their imagination.",
		"is_seen": false,
	},
	"area_clue_letter_1" : {
		"text": "Dearest,_You are not what you think._Something something something.",
		"is_seen": false,
	},
}

# Can I make a dialogue manager and then use code to slice it up
# into smaller chunks to be pushed to the existing dialogue system?
# This seems more scalable for future changes to the text box, to facilitate scrolled text.
