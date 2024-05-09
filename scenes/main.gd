extends Node2D

@export var capybara_scene: PackedScene

var money = 0
var day = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_day_timer_timeout():
	day = day + 1
	get_tree().call_group("capybaras", "day_passed")
	$HUD.update_day(day)
	

func _on_capybara_done():
	money = money + 10.21
	$HUD.update_money(money)
	


func _on_hud_spawn_capybara():
	#print(Time.get_datetime_string_from_system())
	#print("spawning")
	var mob = capybara_scene.instantiate()
	mob.position = Vector2(randi_range(100,400),randi_range(225,550))
	mob.done.connect(_on_capybara_done)
	add_child(mob)
