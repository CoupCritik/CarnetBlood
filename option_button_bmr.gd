extends OptionButton

@export var villageois:bool
@export var parias:bool
@export var sbires:bool
@export var demons:bool

var tab_villageois = ["Grand-mère","Marin","Femme de chambre","Exorciste","Aubergiste","Parieur","Commère","Courtisan",
	"Professeur","Ménestrel","Dame du thé","Pacifiste","Idiot"]

var tab_parias = ["Voyou","Lunatique","Bricoleur","Enfant de la lune"]

var tab_sbires = ["Parrain","Avocat du diable","Assassin","Cerveau"]

var tab_demons = ["Zombuul","Pukka","Shabaloth","Po"]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#Ajoute au popupmenu
	if villageois:
		for i in tab_villageois:
			add_item(i)
	
	if parias:
		for i in tab_parias:
			add_item(i)

	
	if sbires:
		for i in tab_sbires:
			add_item(i)
		
	if demons:
		for i in tab_demons:
			add_item(i)


# Called every frame. 'delta' is the elapsed time since the previous frame.
