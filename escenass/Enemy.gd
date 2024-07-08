extends Area2D

# Propiedades de movimiento
var speed = 50  # Velocidad de movimiento en píxeles por segundo
var distance = 150  # Distancia total a moverse en píxeles

# Estado del movimiento
var moving_left = true
var initial_position: Vector2

func _ready():
	# Guardar la posición inicial
	initial_position = position
	
	# Iniciar el movimiento
	move_left()

func _process(delta):
	# Calcular la cantidad de movimiento basado en el tiempo transcurrido
	var movement = speed * delta
	
	# Mover hacia la izquierda o hacia la derecha según el estado
	if moving_left:
		position.x -= movement
		# Verificar si hemos alcanzado la distancia máxima hacia la izquierda
		if position.x <= initial_position.x - distance:
			move_right()
	else:
		position.x += movement
		# Verificar si hemos regresado a la posición inicial
		if position.x >= initial_position.x:
			move_left()

# Método para mover hacia la izquierda
func move_left():
	moving_left = true

# Método para mover hacia la derecha
func move_right():
	moving_left = false
		
func _on_body_entered(body):
	if body.name == "Goblin":
		Global.score = 0
		get_tree().change_scene_to_file("res://escenass/GameOver.tscn")
		pass # Replace with function body.


			
