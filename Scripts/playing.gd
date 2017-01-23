extends TextureFrame

var notifica = 0
var b = 0
var attuale = 0
func _ready():
	# Called every time the node is added to the scene.s
	# Initialization here
	randomize() 
	var tempo = get_node("Spawn/tempo")
	get_node("musica").play("[No Copyright Music] Ukulele Bells - HookSounds")
	_spawna()
	tempo.set_wait_time(5)
	tempo.start()
	

func _spawna():
	var nave_scn = load("res://Scenes/navetta.tscn")
	var nave = nave_scn.instance()
	var spawn = get_node("Spawn")
	var x_coord = randi()%300+1
	nave.set_pos(Vector2(x_coord, 0))
	spawn.add_child(nave)
#	if (b == 0):
#		var x_coord = randi()%300+1
#		get_node("nave").set_pos(Vector2(x_coord, 0))
#		b = 1
func _tempo():
	var tempo =get_node("Spawn/tempo")
	var timer = float(randi()%3+3)
	tempo.set_wait_time(timer)
	tempo.start()
func _on_TouchScreenButton_pressed():
	#	#how to kill the nave
	var spawn = get_node("Spawn")
	var child = spawn.get_child(6)
	if child != null:
		child.queue_free()



func _on_tempo_timeout():
	_spawna()
	pass # replace with function body
