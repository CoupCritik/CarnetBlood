extends Control

@onready var submenu = load("res://sub_menu.gd")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	
	for i in get_children():
		if i.has_method("openmenu"):
			var nom = String(i.name)
			var b = Button.new()
			b.pressed.connect(openmenu.bind(nom))
			b.text = nom
			$Buttons.add_child(b)
	

func openmenu(menu):
	Signalbus.path.append(menu)
	print(Signalbus.path)
	$Buttons.hide()
	
	get_node(menu).show()
	
