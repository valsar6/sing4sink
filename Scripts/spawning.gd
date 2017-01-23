#extends Node2D
#
# class member variables go here, for example:
# var a = 2
# var b = "textvar"
#var notifica = 0
#var b = 0
#var a = self.get_pos()
#var attuale = 0
#func _ready():
#	randomize() 
#	_spawna()
#	set_process(true)
#	
#func _process(delta):
#	_tempo()
#
#func _spawna():
#	var nave_scn = load("res://Scenes/navetta.tscn")
#	var nave = nave_scn.instance()
#	var x_coord = randi()%300+1
#	nave.set_pos(Vector2(x_coord, 200))
#	add_child(nave)
#	if (b == 0):
#		var x_coord = randi()%300+1
#		get_node("nave").set_pos(Vector2(x_coord, 0))
#		b = 1
#func _tempo():
#	var time = get_node("tempo")
#	var inizio = time.get_time_left()
#	attuale += time.get_time_left() / 30
#	print(attuale)
#	if (attuale > randi()%5+3):
#		_spawna()
#		if (notifica != 0):
#			attuale = 0
#			notifica = 0
#	
#func _on_TouchScreenButton_pressed():
#	#how to kill the nave
#     var child = get_child(2)
#     if child != null:
#          child.queue_free()
#res://Scenes/navetta.tscn	
#	
