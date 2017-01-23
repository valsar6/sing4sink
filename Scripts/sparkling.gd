extends Light2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
const SCALE = 20
const LIGHT = 10
func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	if (self.get_energy() < LIGHT):
		self.set_energy(self.get_energy() + 2.5*delta)
	if(self.get_texture_scale() < SCALE):
		self.set_texture_scale(self.get_texture_scale() + 15*delta)