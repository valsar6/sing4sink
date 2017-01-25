extends TextureFrame

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var VITA = 3.0
const SPEED = 1.5
const TEMPO = 20
func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(true)
	

func _process(delta):
	var visibile = get_node("VisibilityNotifier2D")
	self.set_pos(Vector2(self.get_pos().x, round(self.get_pos().y + SPEED - randf())))
#	Condizioni per la morte	
	if (visibile.is_on_screen() != true):
		self.free()
		
	elif (VITA == 0):
		global.killsNavi += 1
		self.free()
		
	
	
