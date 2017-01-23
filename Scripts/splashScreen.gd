extends TextureFrame

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	get_node("entra").connect("pressed",self,"on_entra_pressed")


func _on_entra_pressed():
	var tempo = get_node("entra/tempo")
	get_node("SamplePlayer").play("plup")
	get_node("Light2D").set_process(true)
	tempo.set_wait_time(1)
	tempo.start()


func _on_tempo_timeout():
	get_tree().change_scene("res://Scenes/startMenu.tscn")
