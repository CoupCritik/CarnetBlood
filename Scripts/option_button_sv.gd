extends OptionButton

@export var villageois:bool
@export var parias:bool
@export var sbires:bool
@export var demons:bool

var tab_villageois = ["Horloger","Rêveur","Charmeur de serpents","Mathématicien","Demoiselle d'honneur","Crieur Public","Oracle","Savant",
	"Couturière","Philosophe","Artiste","Jongleur","Sage"]

var tab_parias = ["Mutant","Tourtereau","Barbier","Empoté"]

var tab_sbires = ["Jumeau maléfique","Sorcière","Cérénovus","Vieille des fosses"]

var tab_demons = ["Fang Gu","Vigormortis","No Dashii","Vortox"]

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
