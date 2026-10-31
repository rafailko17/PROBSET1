var point_a := Vector2(2, 3)
var point_b := Vector2(7, 15)
var distance: float = point_a.distance_to(point_b) # Returns 13.0

var point_c := Vector2(-4, 6)
var point_d := Vector2(8, -2)
var midpoint: Vector2 = point_c.lerp(point_d, 0.5) # Returns Vector2(2, 2)
# Alternatively: (point_c + point_d) / 2.0

var point_a := Vector2(1, 1)
var point_b := Vector2(5, 1)
var y_val := 4.0
# Since y-coordinates of A and B match, x is simply the midpoint's x-coordinate:
var x_val: float = (point_a.x + point_b.x) / 2.0 # Returns 3.0
var point_p := Vector2(x_val, y_val)

var p1 := Vector2(3, -2)
var p2 := Vector2(-1, 6)
var slope: float = (p2.y - p1.y) / (p2.x - p1.x) # Returns -2.0

func get_y_value(x: float) -> float:
	var m := -3.0
	var point := Vector2(2, 5)
	var b := point.y - (m * point.x) # b = 11
	return m * x + b
	
	var p1 := Vector2(1, 2)
var p2 := Vector2(4, 11)
var slope: float = (p2.y - p1.y) / (p2.x - p1.x) # Returns 3.0
var y_intercept: float = p1.y - (slope * p1.x)  # Returns -1.0
# Equation: y = slope * x + y_intercept

var start_pos := Vector2(50, 100)
var end_pos := Vector2(200, 400)
var duration := 5.0

var total_distance: float = start_pos.distance_to(end_pos)
var speed: float = total_distance / duration # Approx 67.08 px/s

var enemy_center := Vector2(300, 250)
var enemy_radius := 20.0
var player_pos := Vector2(310, 265)

# distance_to is faster than calculating manually; distance_squared_to is optimized for checks
var is_colliding: bool = enemy_center.distance_to(player_pos) <= enemy_radius # Returns true


var w1 := Vector2(100, 100)
var w2 := Vector2(100, 300)
var w3 := Vector2(400, 300)

var total_loop_distance: float = w1.distance_to(w2) + w2.distance_to(w3) + w3.distance_to(w1)
# Returns approx 860.56

var player1_pos := Vector2(120, 80)
var player2_pos := Vector2(480, 240)

var camera_target: Vector2 = (player1_pos + player2_pos) / 2.0 # Returns Vector2(300, 160)


var turret_pos := Vector2(0, 0)
var enemy_pos := Vector2(6, 8)

var aim_slope: float = (enemy_pos.y - turret_pos.y) / (enemy_pos.x - turret_pos.x) # Returns 1.3333
var enemy_distance: float = turret_pos.distance_to(enemy_pos)                       # Returns 10.0
var aim_angle_radians: float = turret_pos.angle_to_point(enemy_pos)                 # Vector direction angle
