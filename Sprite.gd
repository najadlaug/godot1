extends Sprite

var xini = 100
var yini = 400
var velocitat = Vector2(60, 60)
var velocitat_angular = 90


# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(xini, yini)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += velocitat * delta
	
	if position.x >= 1024 or position.x <= 0:
		velocitat.x *= -1
	
