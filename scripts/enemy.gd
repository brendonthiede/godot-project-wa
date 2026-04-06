extends CharacterBody2D

const WALK_SPEED := 80.0
const GRAVITY    := 980.0

@onready var sprite : AnimatedSprite2D = $AnimatedSprite2D
@onready var ray_left  : RayCast2D = $RayLeft
@onready var ray_right : RayCast2D = $RayRight

var direction := -1.0

func _ready() -> void:
	sprite.play("walk")
	_update_facing()

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y += GRAVITY * delta
	else:
		velocity.y = 0.0

	velocity.x = direction * WALK_SPEED

	move_and_slide()

	if is_on_floor():
		# Turn around at walls or ledges
		var hit_wall := is_on_wall()
		var at_ledge := false
		if direction < 0 and not ray_left.is_colliding():
			at_ledge = true
		elif direction > 0 and not ray_right.is_colliding():
			at_ledge = true

		if hit_wall or at_ledge:
			direction *= -1.0
			_update_facing()

func _update_facing() -> void:
	sprite.flip_h = (direction > 0)
