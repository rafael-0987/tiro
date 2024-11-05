extends Node2D

const path_projetio = preload("res://armas/arma1/bala/bala_1.tscn")

@export var boca_arma: Marker2D


func _process(delta):
	_tiro()

func _input(event):
	if InputEventMouse:
		
		look_at(get_global_mouse_position())


func _tiro ():
	if Input.is_action_just_pressed("atirar1"):
		var i = path_projetio.instantiate()
		
		i.global_position = boca_arma.global_position
		get_parent().get_parent().add_child(i)
