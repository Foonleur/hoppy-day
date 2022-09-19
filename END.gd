extends Control


func _ready():
	pass


func _on_exit_pressed():
	get_tree().quit()


func _on_menu_pressed():
	get_tree().change_scene("res://Scenes/Levels/menu.tscn")
