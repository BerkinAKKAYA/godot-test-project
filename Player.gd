extends CharacterBody2D

@export var speed = 400

func get_input():
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")

	input_direction.y = 0

	if position.x < -200 && input_direction.x < 0:
		input_direction.x = 0
	if position.x > 200 && input_direction.x > 0:
		input_direction.x = 0
	
	return input_direction

func _physics_process(_delta):
	var input_direction = get_input()
	velocity = input_direction * speed

	move_and_slide()