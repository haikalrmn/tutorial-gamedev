extends KinematicBody2D


# Declare member variables here. Examples:
export var mv_speed = 200.0
export var rt_speed = 1.0


# Called when the node enters the scene tree for the first time.
func _ready():
	print("Game is starting...")
	print("Press arrow keys to move, a key to speed up, s to speed down.")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if Input.is_action_pressed("move_up"):
		var collision = move_and_collide(transform.basis_xform(Vector2(0, -mv_speed * delta)).rotated($Sprite.rotation))
		if collision:
			print("Parkir anda brutal!")
			get_tree().reload_current_scene()
			
	if Input.is_action_pressed("move_down"):
		var collision = move_and_collide(transform.basis_xform(Vector2(0, mv_speed * delta)).rotated($Sprite.rotation))
		if collision:
			print("Parkir anda brutal!")
			get_tree().reload_current_scene()
			
	if Input.is_action_pressed("move_right"):
		rotate(rt_speed*delta)
		
	if Input.is_action_pressed("move_left"):
		rotate(-rt_speed*delta)
		
	if Input.is_action_pressed("speed_up"):
		if (mv_speed != 300):
			print("Movement speed is now " + str(mv_speed))
			mv_speed += 10
		else:
			print("Movement speed is at the highest!")
		
	if Input.is_action_pressed("speed_down"):
		if (mv_speed != 50):
			print("Movement speed is now " + str(mv_speed))
			mv_speed -= 10
		else:
			print("Movement speed is at the lowest!")
