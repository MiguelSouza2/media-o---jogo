extends RigidBody2D

var direction := -1
var speed := 30
@onready var wall_detector := $RayCast2D as RayCast2D
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	
	
	if wall_detector.is_colliding():
		if scale.x == 1:
			scale.x = -1
		elif scale.x == -1:
			scale.x = 1	
		direction *= -1
	else:
		position.x += direction * speed * delta
	
	pass
