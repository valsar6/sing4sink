extends Panel

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
#var attuale = 0

func _ready():
	randomize()
	var tempo = get_node("tempo")
	tempo.set_wait_time(3)
	tempo.start()
	_spawna()
	
func _spawna():
	var note_scn = load("res://Scenes/nota.tscn")
	var nota = note_scn.instance()
	#Varie Texture
	var tex0 = load("res://Texture/verde.tex")
	var tex1 = load("res://Texture/blu.tex")
	var tex2 = load("res://Texture/viola.tex")
	var tex3 = load("res://Texture/rosso.tex")
	var tex4 = load("res://Texture/giallo.tex")
	var arr = [tex0,tex1, tex2,tex3,tex4]
	nota.set_pos(Vector2(680, 60))
	nota.set_texture(arr[randi()%4])
	add_child(nota)
func _on_tempo_timeout():
	_spawna()
	pass # replace with function body
