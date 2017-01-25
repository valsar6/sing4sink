extends TextureFrame

# class member variables go here, for example:
var a = 0
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	get_node("start").connect("pressed",self,"on_start_pressed")
	get_node("quit").connect("pressed",self,"on_quit_pressed")
	get_node("SamplePlayer").play("musica menu")
func _on_start_pressed():
	if(get_child(4) == null):
		get_node("SamplePlayer").stop(3)
		get_node("SamplePlayer").play("plup")
		while (a < 10000):
			_tempo()
		get_tree().change_scene("res://Scenes/dialogue.tscn")
	# replace with function body


func _on_quit_pressed():
	if (get_child(4) == null):
		get_node("SamplePlayer").play("plup")
		while (a < 10000):
			_tempo()
		get_node("SamplePlayer").stop_all()
		get_tree().quit()
	else:
		pass

func _process(delta):
	_tempo()
func _tempo():
	var time = 1
	a +=  time 
	print(a)


func _on_options_pressed():
	if (get_child(4) == null):
		var options_scn = load("res://Scenes/options.tscn")
		var options = options_scn.instance()
		options.set_pos(Vector2(0, 350))
		add_child(options)
	pass # replace with function body
