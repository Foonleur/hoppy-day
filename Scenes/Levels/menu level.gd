extends Control


func _on_Level1_pressed():
	$Button.play()
	get_tree().change_scene("res://Scenes/Levels/Level_1.tscn")
	
	
	


func _on_level2_pressed():
	$Button.play()


func _on_level3_pressed():
	$Button.play()


func _on_level4_pressed():
	$Button.play()


func _on_level5_pressed():
	$Button.play()


func _on_back_pressed():
	get_tree().change_scene("res://Scenes/Levels/menu.tscn")
