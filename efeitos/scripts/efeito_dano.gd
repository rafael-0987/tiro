extends Node2D

@export var label_text: String

@onready var label = $label

var spawn : Vector2
var rng = RandomNumberGenerator.new()


func _ready():
	var rng_x = rng.randi_range(-50, 50)
	var rng_y = rng.randi_range(-50, 50)
	
	spawn = Vector2(rng_x, rng_y)
	
	
	position = spawn
	
	label.text = label_text



func _on_anim_animation_finished(anim_name):
	queue_free()
