extends Panel
# class member variables go here, for example:
# var a = 2
# var b = "textvar"
#var attuale = 0

#In questo array i valori corrispondono rispettivamente a 
# 4/4 2/4 1/4 1/8 1/16 1/32
#var timing_arr = [1.712, 0.856, 0.428, 0.214, 0.107, 0.053]

func _ready():
	var tempo = get_node("tempo")
	randomize()
	tempo.set_wait_time(randi()%3)
	tempo.start()
	_spawna()
	
func _spawna():
	var note_scn = load("res://Scenes/nota.tscn")
	var nota = note_scn.instance()
	#Varie Texture
	var tex0 = load("res://Texture/battle_screen/battle_hud/notes/blu.tex")
	var tex1 = load("res://Texture/battle_screen/battle_hud/notes/rosso.tex")
	var tex2 = load("res://Texture/battle_screen/battle_hud/notes/giallo.tex")
	var tex3 = load("res://Texture/battle_screen/battle_hud/notes/viola.tex")
	var tex4 = load("res://Texture/battle_screen/battle_hud/notes/verde.tex")
	var group_arr = ["0blu", "1rosso", "2giallo", "3viola", "4verde"]
	var arr = [tex0,tex1, tex2,tex3,tex4]
	var num = randi()%4
	nota.set_pos(Vector2(680, 60))
	nota.set_texture(arr[num])
	nota.add_to_group(group_arr[num])
#	print(nota.get_groups())
#	print(nota.is_in_group("0blu"))
	add_child(nota)
func _on_tempo_timeout():
	var tempo = get_node("tempo")
	tempo.set_wait_time(randi()%3)
	_spawna()
	pass # replace with function body
