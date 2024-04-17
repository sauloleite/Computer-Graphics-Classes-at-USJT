extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity: int = ProjectSettings.get_setting("physics/2d/default_gravity")


var move_direction = 1 # 1 for right, -1 for left

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if is_on_floor():
		velocity.y = JUMP_VELOCITY * 0.5 # Reduced jump height for AI

	# Handle movement direction change
	if is_on_wall() and move_direction > 0:
		move_direction = -1
	elif is_on_wall() and move_direction < 0:
		move_direction = 1

	# Apply movement
	velocity.x = move_direction * SPEED

	# Move and slide
	move_and_slide()

