extends TextureFrame
#VOLUME GENERALE Texture
var vol0 = load("")
var vol1 = load("res://Texture/menu/options/volume/vol1.tex")
var vol2 = load("res://Texture/menu/options/volume/vol2.tex")
var vol3 = load("res://Texture/menu/options/volume/vol3.tex")
var vol4 = load("res://Texture/menu/options/volume/vol4.tex")
var vol_arr = [vol0, vol1, vol2, vol3, vol4]
var sfx_arr = [vol0, vol1, vol2, vol3, vol4]
func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	get_node("SamplePlayer").play("[No Copyright Music] Ukulele Bells - HookSounds")
	get_node("StreamPlayer").play(1)


 # Gestione VOLUME GENERALE


func _on_volume_up_pressed():
	if (global.general_volume <= 3):
		global.general_volume += 1
		get_node("volume_barretta").set_texture(vol_arr[global.general_volume])
		print(global.general_volume)
	else:
		pass
	pass # replace with function body


func _on_volume_less_pressed():
	if (global.general_volume >= 1):
		global.general_volume -= 1
		get_node("volume_barretta").set_texture(vol_arr[int(global.general_volume)])
		print(global.general_volume)
	else:
		pass
	pass # replace with function body

#Gestione SFX GENERALE 

func _on_SFX_up_pressed():
	if (global.general_SFX <= 3):
		global.general_SFX += 1
		get_node("SFX_barretta").set_texture(vol_arr[int(global.general_SFX)])
		print(global.general_SFX)
	else:
		pass

func _on_SFX_less_pressed():
	if (global.general_SFX >= 1):
		global.general_SFX -= 1
		get_node("SFX_barretta").set_texture(vol_arr[int(global.general_SFX)])
		print(global.general_SFX)
	else:
		pass


func _on_back_pressed():
	self.queue_free()
	pass # replace with functson body
