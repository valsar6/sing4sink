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
	get_node("SamplePlayer").stop(3)
	get_node("SamplePlayer").play("plup")
	while (a < 10000):
		_tempo()
	get_tree().change_scene("res://Scenes/dialogue.tscn")
	# replace with function body


func _on_quit_pressed():
	get_node("SamplePlayer").play("plup")
	while (a < 10000):
		_tempo()
	get_node("SamplePlayer").stop_all()
	get_tree().quit()
		
func _process(delta):
	_tempo()
func _tempo():
	var time = 1
	a +=  time 
	print(a)
