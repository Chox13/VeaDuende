extends Node2D
@onready var player = $AudioStreamPlayer
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	player.play() 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass