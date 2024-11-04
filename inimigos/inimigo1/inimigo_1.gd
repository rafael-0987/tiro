extends CharacterBody2D

@export var target_player: CharacterBody2D
@export var speed: float

func _physics_process(delta):
	_move()

func _move():
	velocity = global_position.direction_to(target_player.global_position).normalized() * speed
	
	move_and_slide()
