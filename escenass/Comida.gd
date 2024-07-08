extends Area2D

@onready var anim = $AnimatedSprite2D

func _on_body_entered(body):
	if body.name == "Goblin":
		anim.play("Colect")
		await anim.animation_finished
		queue_free()
