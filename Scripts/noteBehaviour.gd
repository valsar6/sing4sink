extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
const SPEED = 1
func _ready():
	set_process(true)
	

func _process(delta):
	var visibile = get_node("VisibilityNotifier2D")
	if(visibile.is_on_screen() == true):
		self.set_pos(Vector2(round(self.get_pos().x - SPEED), self.get_pos().y))
#	Condizioni per la morte	
	if (self.get_pos().x < -50 ):
		self.free()
		
		

func _on_TouchScreenButton_pressed():
	pass # replace with function body
