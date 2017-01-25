extends Node
var general_volume = 3
var general_SFX = 3
var killsNavi = 0

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(true)
	pass

func _process(delta):
	AudioServer.set_stream_global_volume_scale(0.2*general_volume)
	AudioServer.set_fx_global_volume_scale ( 0.2*general_SFX)
	
