extends Control

func _ready():
	MusicManager.play(0)
	var o = preload("res://menus/Options.tscn").instance()
	o.visible = false
	add_child(o)
	o.queue_free()

func _process(delta):
	if(not $VideoPlayer.is_playing()):
		$VideoPlayer.play()

func _on_Play_pressed():
	get_tree().change_scene("res://game/TestLevel.tscn")

func _on_Options_pressed():
	get_tree().change_scene("res://menus/Options.tscn")