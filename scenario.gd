extends HBoxContainer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.




func _on_trouble_brewing_pressed() -> void:
	$Buttons.hide() # Replace with function body.
	$TroubleBrewing.show()



func _on_bad_moon_rising_pressed() -> void:
	$Buttons.hide()
	$TroubleBrewing.show()# Replace with function body.
