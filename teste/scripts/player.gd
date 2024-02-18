extends CharacterBody2D


const speed = 300.00

func _physics_process(delta):

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction_x = Input.get_axis("ui_left", "ui_right")
	var direction_y = Input.get_axis("ui_up", "ui_down")
	var input:= Vector2(direction_x, direction_y)
	
	position += input * speed * delta;
	
	
	move_and_slide()


func _on_hurtbox_body_entered(body):
	if GlobalScripts.cont_mention < 4:
		GlobalScripts.cont_mention += 1
		GlobalScripts.mention[GlobalScripts.cont_mention]
		print("tocou " + str(GlobalScripts.cont_mention) + " e mention " + str(GlobalScripts.mention[GlobalScripts.cont_mention]))
	
	pass # Replace with function body.
