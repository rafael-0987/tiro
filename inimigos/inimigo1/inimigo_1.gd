extends CharacterBody2D

@export var target_player: CharacterBody2D
@export var speed: float


@onready var anim = $anim


func _process(delta):
	_anim()

func _physics_process(delta):
	_move()
	

func _move():
	velocity = global_position.direction_to(target_player.global_position).normalized() * speed
	
	move_and_slide()


func _anim ():
	if velocity.x < 0:
		anim.flip_h = true
		
	elif velocity.x > 0:
		anim.flip_h = false
