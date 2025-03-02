extends CharacterBody2D

var direction = Vector2.ZERO

func _input(event):
	if event is InputEventMouseButton:
		var mousePosition = get_global_mouse_position()
		direction = position.direction_to(mousePosition)
		look_at(get_global_mouse_position())

func _physics_process(_delta):
	velocity = direction * 50
	move_and_slide()
