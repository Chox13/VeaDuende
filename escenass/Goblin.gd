extends CharacterBody2D

var speed=100
var player_state

func _physics_process(delta):
		var direction = Input.get_vector("left","right","up","down")
		
		if direction.x == 0 and direction.y==0:
			player_state="idle"
		elif direction.x != 0 or direction.y!=0:
			player_state="walking"
			
		velocity=direction*speed
		move_and_slide()
		play_anim(direction)
		
func play_anim(dir):
	if player_state=="idle":
		$AnimatedSprite2D.play("idle")
	elif player_state=="walking":
		$AnimatedSprite2D.play("walking")
		

func _on_Goblin_body_entered(body):
	if body.name == "Enemy":
		change_scene_to_game_over()


func change_scene_to_game_over():
	var game_over_scene = load("res://escenass/GameOver.tscn")
	get_tree().change_scene(game_over_scene)
	pass
