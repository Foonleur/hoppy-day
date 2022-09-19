extends Control


func _ready():
	pass



func _on_Start_pressed():
	$sound/Button.play()
	get_tree().change_scene("res://Scenes/Levels/menu level.tscn")
	

func _on_Exit_pressed():
	get_tree().quit()
