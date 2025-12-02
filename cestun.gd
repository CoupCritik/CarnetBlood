extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"../OptionButton".item_selected.connect(chooseCharacter)
	Signalbus.character_chosen.connect(chooseCharacter)
	pass # Replace with function body.


func chooseCharacter(i):
	
	
	var role = $"../OptionButton".get_item_text(i)
	
	if role in $"../OptionButton".tab_villageois:
		text = "Tu es un villageois"
	elif role in $"../OptionButton".tab_parias:
		text = "Tu es un paria"
	elif role in $"../OptionButton".tab_sbires:
		text = "Tu es un sbire"
	elif role in $"../OptionButton".tab_demons:
		text = "Tu es un démon"
		
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
