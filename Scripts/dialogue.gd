extends TextureFrame

# class member variables go here, for example:
var a = 1
var b = 0
var musica = 0
func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	TranslationServer.set_locale("it")
	set_message_translation(true)
	print(TranslationServer.get_locale())
	get_node("SamplePlayer").play("musica menu")
	
	
func _on_TouchScreenButton_pressed():
	var c = "DIAG1-" + String(a)
	var sirena = get_node("sirena")
	var spiaggia2 = load("res://Texture/sfondo mare2.tex")
	var sirenaRabbia = load("res://Texture/sirena rabbia picc.tex")
	var sirenaPreoccupata = load("res://Texture/sirena preoccupata picc.tex")
	var tempo= get_node("tempo")
	get_node("dialogueBox").show()
	var testo = get_node("dialogueBox/RichTextLabel")
#	var text = get_node("TextEdit")
	testo.clear()
	testo.add_text(tr(c))
	a += 1
	print("hai premuto il tasto")
	print(a)
	print(c)
	if (a > 2):
		sirena.show()
	if(a > 5):
		musica += 1
		self.set_texture(spiaggia2)
		sirena.set_texture(sirenaPreoccupata)
		if(musica == 1): 
			get_node("SamplePlayer").stop_all()
			get_node("SamplePlayer").play("musicamarco")
			
	if (a > 8):
		sirena.set_texture(sirenaRabbia)
	if (a > 9):
		get_node("SamplePlayer").play("plup")
		var start = OS.get_unix_time()
		tempo.connect("timeout", self, "queue_free")
		if (a == 10):
			tempo.set_wait_time(1)
			tempo.start()

func _on_tempo_timeout():
	get_tree().change_scene("res://Scenes/playing.tscn")
