extends CharacterBody2D

@export var speed = 250
@export_category("confg. arma")
@export var distancia_arma: int

@onready var arma_1 = $arma_1


var direcao_de_movimento : Vector2 = Vector2(0,0)

func _ready():
	pass 

func _process(delta):
	pass


func _physics_process(delta):
	mover_personagem()
	animar_personagem()

func mover_personagem():
	direcao_de_movimento = Input.get_vector("esquerda","direita","cima","baixo").normalized()
	velocity = direcao_de_movimento * speed
	move_and_slide()

func animar_personagem():
	
	
	if velocity.x < 0 :
		arma_1.position.x = -distancia_arma
		
	if velocity.x > 0 :
		arma_1.position.x = distancia_arma
		
	
	
	
	
	
	
	
	if velocity.x <0:
		$Animated.play("run")
		$Animated.flip_h = true
		return
	if velocity.x >0:
		$Animated.play("run")
		$Animated.flip_h = false
		return
	if velocity.y <0:
		$Animated.play("run")
		return
	if velocity.y >0:
		$Animated.play("run")
		return
	$Animated.play("idle")
