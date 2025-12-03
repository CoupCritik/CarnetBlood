extends OptionButton

@export var villageois:bool
@export var parias:bool
@export var sbires:bool
@export var demons:bool

var tab_villageois = ["Grand-mère","Marin","Femme de chambre","Exorciste","Aubergiste","Parieur","Commère","Courtisane",
	"Professeur","Ménestrel","Dame du thé","Pacifiste","Bouffon"]

var tab_parias = ["Voyou","Lunatique","Bricoleur","Enfant de la lune"]

var tab_sbires = ["Parrain","Avocat du diable","Assassin","Cerveau"]

var tab_demons = ["Zombuul","Pukka","Shabaloth","Po"]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#Ajoute au popupmenu
	if villageois:
		for i in range(len(tab_villageois)):
			add_item(tab_villageois[i])
			set_item_icon(i,load("res://bmr/villageois/" + tab_villageois[i] +".png"))
	
	if parias:
		for i in range(len(tab_parias)):
			add_item(tab_parias[i])
			set_item_icon(i,load("res://bmr/Parias/" + tab_parias[i] +".png"))
	
	if sbires:
		for i in range(len(tab_sbires)):
			add_item(tab_sbires[i])
			set_item_icon(i,load("res://bmr/mechants/" + tab_sbires[i] +".png"))
		
	if demons:
		for i in range(len(tab_demons)):
			add_item(tab_demons[i])
			set_item_icon(i,load("res://bmr/mechants/" + tab_demons[i] +".png"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
