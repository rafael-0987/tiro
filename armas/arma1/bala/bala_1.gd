extends CharacterBody2D

var direction
var speed = 900
# Called when the node enters the scene tree for the first time.
func _ready():
	look_at(get_global_mouse_position())
	
	
	direction = global_position.direction_to(get_global_mouse_position()).normalized()
	

func _physics_process(delta):
	velocity = direction * speed
	move_and_slide()
