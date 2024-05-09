extends CanvasLayer

signal spawn_capybara

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func update_day(day):
	$Day.text = "Day: " + str(day)
	
func update_money(money):
	$Money.text = "Money: $" + str(money)


func _on_spawn_button_pressed():
	spawn_capybara.emit()
