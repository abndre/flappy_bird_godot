extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

const UP = Vector2(0,-1)
var motion = Vector2()
const JUMP_HEIGHT   = -500

#constants
const GRAVITY = 20



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	#gravity
	if parameters.PLAY:
		motion.y+=GRAVITY
	
	if Input.is_action_just_pressed("ui_up"):
		parameters.PLAY = true
		motion.y = JUMP_HEIGHT

	
	motion = move_and_slide(motion,UP)
	pass
