extends OptionButton

@export var villageois:bool
@export var parias:bool
@export var sbires:bool
@export var demons:bool
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if villageois:
		add_item("Lavandière")
		add_item("Libraire")
		add_item("Enquêteur")
		add_item("Chef")
		add_item("Empathique")
		add_item("Voyante")
		add_item("Croque-mort")
		add_item("Moine")
		add_item("Gardien")
		add_item("Mercenaire")
		add_item("Vierge")
		add_item("Soldat")
		add_item("Maire")
	if parias:
		add_item("Demoiselle")
		add_item("Majordome")
		add_item("Ivrogne")
		add_item("Reclus")
		add_item("Saint")
	if sbires:
		add_item("Empoisonneur")
		add_item("Baron")
		add_item("Espion")
		add_item("Confidente")
	if demons:
		add_item("Diablotin")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
