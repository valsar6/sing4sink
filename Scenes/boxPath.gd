extends TabContainer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	var cane = self.get_path()
	var nuova = get_child(0).duplicate()
	
	print(cane)
