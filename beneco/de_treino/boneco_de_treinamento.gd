extends Node2D

const path_efeito_amarelo = preload("res://efeitos/cenas/efeito_amarelo.tscn")
const path_efeito_dano = preload("res://efeitos/cenas/efeito_dano.tscn")

@export var dano: bool
@export var numero_dano: int

@onready var animated = $Animated


func _process(delta):
	_anim()

func _anim():
	if dano:
		var i = path_efeito_amarelo.instantiate()
		add_child(i)
		
		var i_efeito_dano = path_efeito_dano.instantiate()
		i_efeito_dano.label_text = str(numero_dano)
		add_child(i_efeito_dano)
		
		animated.play("hit")
		dano = false


func _on_animated_animation_finished():
	animated.play("idle")
	
