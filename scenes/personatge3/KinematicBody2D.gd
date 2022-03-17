extends KinematicBody2D

var base_velocity = Vector2.ZERO
var direction = Vector2.DOWN

var velocity = Vector2.ZERO
var gravity = Vector2.DOWN * 98.1

func _physics_process(delta):
	move_and_slide(velocity)
	velocity += gravity * delta
	
