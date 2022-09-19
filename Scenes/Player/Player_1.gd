extends KinematicBody2D

var motion = Vector2(0,0)
var Coins = 0

export var Speed = 500
export var Gravity = 25
export var Jump_power = 700
const UP = Vector2(0,-1)

var countjump = 0

func _ready():
	$"../Sound/music_in_game".play()

func _physics_process(delta):
	Game_gravity()
	jump()
	move_in_game()
	animate()
	game_end_coins()
	move_and_slide(motion,UP)
	
	
	

	
func animate():
	if motion.x != 0:
		$AnimatedSprite.play("walk")
	else:
		$AnimatedSprite.play("Idle")
	if motion.y <0 :
		$AnimatedSprite.play("jump")
	
	
	
func move_in_game():
	if Input.is_action_pressed("left") and not Input.is_action_pressed("right"):
		motion.x = -Speed
		$AnimatedSprite.flip_h = true
	elif Input.is_action_pressed("right") and not Input.is_action_pressed("left"):
		motion.x = Speed
		$AnimatedSprite.flip_h = false
	else:
		motion.x = 0
	
func Game_gravity():
	if is_on_floor():
		motion.y = 0
		countjump = 0
	else:
		motion.y += Gravity

func jump():
	if Input.is_action_just_pressed("jump") and countjump <2:
		motion.y = - Jump_power
		countjump += 1
		$jump_sound.play()
	
func Add_coins():
	Coins = Coins + 1
	$"../Sound/coins_sound".play()

func game_end_coins():
	if Coins == 3:
		get_tree().change_scene("res://Scenes/Levels/END.tscn")

func _on_Fall_dead_body_entered(body):
	get_tree().change_scene("res://Scenes/Levels/Level_1.tscn")
