extends OptionButton

@export var villageois:bool
@export var parias:bool
@export var sbires:bool
@export var demons:bool


var tab_villageois = ["Knight","Preacher","Balloonist","High Priestess","Town Crier","Alsaahir","Savant","Fisherman",
	"Philosopher","Seamstress","Princess","Banshee","Amnesiac"]


var tab_parias = ["Snitch","Puzzlemaster","Golem","Politician"]

var tab_sbires = ["Boffin","Xaan","Boomdandy","Mastermind"]

var tab_demons = ["Al-Hadikhia"]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#Ajoute au popupmenu
	
	if villageois:
		add_separator("Villageois")
		for i in range(len(tab_villageois)):
			add_item(tab_villageois[i])
			set_item_icon(i+1,load("res://icones/rtc/villageois/" + tab_villageois[i] +".webp"))
	
	
	if parias:
		add_separator("Parias")
		var indice = item_count
		for i in range(len(tab_parias)):
			add_item(tab_parias[i])
			set_item_icon(indice + i,load("res://icones/rtc/parias/" + tab_parias[i] +".webp"))
	
	if sbires:
		add_separator("Sbires")
		var indice = item_count
		for i in range(len(tab_sbires)):
			add_item(tab_sbires[i])
			set_item_icon(indice + i,load("res://icones/rtc/mechants/" + tab_sbires[i] +".webp"))
		
	if demons:
		add_separator("Démons")
		var indice = item_count
		for i in range(len(tab_demons)):
			add_item(tab_demons[i])
			set_item_icon(indice + i,load("res://icones/rtc/mechants/" + tab_demons[i] +".webp"))

# Called every frame. 'delta' is the elapsed time since the previous frame.
