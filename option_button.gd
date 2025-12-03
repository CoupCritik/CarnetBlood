extends OptionButton

@export var villageois:bool
@export var parias:bool
@export var sbires:bool
@export var demons:bool

var tab_villageois = ["Lavandière","Libraire","Enquêteur","Chef","Empathique","Voyante","Croque-mort","Moine",
	"Gardien","Mercenaire","Vierge","Soldat","Maire"]

var tab_parias = ["Demoiselle","Majordome","Ivrogne","Reclus","Saint"]

var tab_sbires = ["Empoisonneur","Baron","Espion","Confidente"]

var tab_demons = ["Diablotin"]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#Ajoute au popupmenu
	if villageois:
		for i in range(len(tab_villageois)):
			
			add_item(tab_villageois[i])
			set_item_icon(i,load("res://icon.svg"))
	
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
