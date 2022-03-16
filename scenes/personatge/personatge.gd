extends Area2D

var xini = 100
var yini = 100
var velocitat = 400
var velocitat_angular = 90
var direccio = Vector2(0,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(xini, yini)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	direccio = Vector2.ZERO
	if Input.is_action_pressed("ui_right"):
		direccio += Vector2(1, 0)
		
	if Input.is_action_pressed("ui_left"):
		direccio += Vector2(-1, 0)
		
	if Input.is_action_pressed("ui_down"):
		direccio += Vector2(0, 1)
		
	if Input.is_action_pressed("ui_up"):
		direccio += Vector2(0, -1)
			
	
	position += direccio.normalized() * velocitat * delta
	#print(position)


func _on_personatge_area_entered(area):
	area.modulate = Color(1, 0, 0)# Replace with function body.
	modulate = Color(0, 1, 0)

func _on_personatge_area_exited(area):
	modulate = Color(1, 1, 1) # Replace with function body.
	area.modulate = Color(1, 1, 1)
