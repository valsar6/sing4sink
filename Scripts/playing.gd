extends TextureFrame

var notifica = 0
var b = 0
var attuale = 0
var serieNote = 0
var maxTolerance = 120
func _ready():
	# Called every time the node is added to the scene.s
	# Initialization here
	randomize() 
	var tempo = get_node("Spawn/tempo")
	get_node("tabellone").add_text(String(serieNote))
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

#Col timerone posso chiamare la funzione di attacco come mi pare
func _on_attack_time_timeout():
	print("Le navi uccise sono ",String(global.killsNavi))
	_attacco()
	
func _attacco():
	if (serieNote >= 5):
		var spawn = get_node("Spawn")
#		var freccia_scn = load("res://Scenes/nota.tscn")
#		var freccia = freccia.instance()
#		freccia.set_pos(Vector2(700,950))
#		add_child(freccia)
		var nemici = spawn.get_child(2)
		if (nemici.is_in_group("nemici")  == true && nemici != null):
			nemici.VITA -= 1
			

func _tempo():
	var tempo =get_node("Spawn/tempo")
	var timer = float(randi()%3+3)
	tempo.set_wait_time(timer)
	tempo.start()
	
func _on_tempo_timeout():
	_spawna()
	pass # replace with function body

#Come eliminiamo le figlie di bastarde??

func _on_pesce_pressed():
	var nota = get_node("sparaNote")
	var child = nota.get_child(3)
	if (child.is_in_group("0blu") == true  && child.get_pos().x < maxTolerance && child.get_pos().x > 30 && child != null):
		get_node("playerone").play("220207__gameaudio__boot-sound")
		serieNote += 1
		child.queue_free()
		_punteggio()
	else:
		get_node("playerone").play("220208__gameaudio__click-pop-two-part")
		serieNote = 0
		_punteggio()
func _on_stella_pressed():
	var nota = get_node("sparaNote")
	var child = nota.get_child(3)
	if (child.is_in_group("1rosso") == true  && child.get_pos().x < maxTolerance && child.get_pos().x > 30 && child != null):
		get_node("playerone").play("220207__gameaudio__boot-sound")
		serieNote += 1
		child.queue_free()
		_punteggio()
	else:
		get_node("playerone").play("220208__gameaudio__click-pop-two-part")
		serieNote = 0
		_punteggio()
func _on_conchiglia_pressed():
	var nota = get_node("sparaNote")
	var child = nota.get_child(3)
	if (child.is_in_group("2giallo") == true  && child.get_pos().x < maxTolerance && child.get_pos().x > 30 && child != null):
		get_node("playerone").play("220207__gameaudio__boot-sound")
		serieNote += 1
		child.queue_free()
		_punteggio()
	else:
		get_node("playerone").play("220208__gameaudio__click-pop-two-part")
		serieNote = 0
		_punteggio()
func _on_perla_pressed():
	var nota = get_node("sparaNote")
	var child = nota.get_child(3)
	print(String(child.get_pos()))
	if (child.is_in_group("3viola") == true && child.get_pos().x < maxTolerance && child.get_pos().x > 30  && child != null):
		get_node("playerone").play("220207__gameaudio__boot-sound")
		serieNote += 1
		child.queue_free()
		_punteggio()
	else:
		get_node("playerone").play("220208__gameaudio__click-pop-two-part")
		serieNote = 0
		_punteggio()

func _on_alga_pressed():
	var nota = get_node("sparaNote")
	var child = nota.get_child(3)
	if (child.is_in_group("4verde") == true  && child.get_pos().x < maxTolerance && child.get_pos().x > 30 && child != null):
		get_node("playerone").play("220207__gameaudio__boot-sound")
		serieNote += 1
		child.queue_free()
		_punteggio()
	else:
		get_node("playerone").play("220208__gameaudio__click-pop-two-part")
		serieNote = 0
		_punteggio()

func _punteggio():
	get_node("tabellone").clear()
	get_node("tabellone").add_text(String(serieNote))


