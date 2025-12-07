extends Node
signal character_chosen(i)
var path = ["Arbre"]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func chooseCharacter(c):
	character_chosen.emit(c)
# Called every frame. 'delta' is the elapsed time since the previous frame.
