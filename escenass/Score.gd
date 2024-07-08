extends Label

func _process(delta):
	self.text = str(Global.score)
	


func _on_comida_body_entered(body):
	Global.score += 1
