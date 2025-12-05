extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.


func _on_button_pressed() -> void:
	if len(Signalbus.path) >1:
		var t = self
		
		for i in Signalbus.path:
			t=t.get_node(i)
		t.hide()
		Signalbus.path.pop_back()
		t = self
		for i in Signalbus.path:
			t=t.get_node(i)
		
		t.get_node("Buttons").show()
		
	
	
