extends Sprite


var hour_angle      # Angle of rotation of the hour-hand
var minute_angle    # Angle of rotation of the minute-hand
var second_angle    # Angle of rotation of the second-hand


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	second_angle = OS.get_time()["second"] * (PI/30)
	minute_angle = OS.get_time()["minute"] * (PI/30) + second_angle/60
	hour_angle = OS.get_time()["hour"] * (PI/6) + minute_angle/12

	$hour_hand.set_rotation(hour_angle)
	$minute_hand.set_rotation(minute_angle)
	$second_hand.set_rotation(second_angle)

