extends HBoxContainer

var boutonsVisibles = 1
var minb = 0
var maxb = 4

func _ready() -> void:
	$"../HBoxContainer/Plus".pressed.connect(plus)
	$"../HBoxContainer/Minus".pressed.connect(minus)

func plus() :
	
	$"../Label".text="Les parias suivants sont en jeu"
	
	if boutonsVisibles<maxb:
		get_children()[boutonsVisibles].show()
		boutonsVisibles+=1
	

func minus():
	if boutonsVisibles==1:
		$"../Label".text="Il n'y a pas de parias en jeu"
	if boutonsVisibles>minb:
		boutonsVisibles-=1
		get_children()[boutonsVisibles].hide()
		
