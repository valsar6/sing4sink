extends TextureFrame

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _on_back_pressed():
	self.queue_free()
	
	pass # replace with function body


func _on_volume_pressed():
		if (self.get_child(4) == null):
			var volume_scn = load("res://Scenes/volumeMenu.tscn")
			var volume = volume_scn.instance()
			volume.set_pos(Vector2(0, 0))
			add_child(volume)



func _on_language_pressed():
		if (self.get_child(4) == null):
			var language_scn = load("res://Scenes/selectLanguage.tscn")
			var language = language_scn.instance()
			language.set_pos(Vector2(0, 0))
			add_child(language)


func _on_credits_pressed():
		if (self.get_child(4) == null):
			var credits_scn = load("res://Scenes/creditsMenu.tscn")
			var credits = credits_scn.instance()
			credits.set_pos(Vector2(0, 0))
			add_child(credits)
