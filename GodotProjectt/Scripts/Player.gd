extends KinematicBody2D

signal hit

export var speed = 400

var coins = 0
var velocity = Vector2.ZERO



	
func _physics_process(delta):
	# hdir = horizontal direction, vdir = vertical direction
	# get_action_strength gets either a 1 or 0 if it's pressed or not
	var hdir =  Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	var vdir = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	# Sets the velocity's x and y to the keys pressed * speed
	velocity.x = hdir
	velocity.y = vdir
	
	velocity = velocity.normalized()
	velocity = move_and_slide(velocity * speed)


	if hdir > 0:
		$AnimatedSprite.rotation_degrees = 90
	elif hdir < 0:
		$AnimatedSprite.rotation_degrees = -90
	
	if vdir > 0:
		$AnimatedSprite.rotation_degrees = 180
	elif vdir < 0:
		$AnimatedSprite.rotation_degrees = 0

