extends Node2D

signal done
@export var nights = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func day_passed():
	nights = nights - 1
	if nights == 1:
		z_index = 1
		$AnimatedSprite2D.animation = "cow_leaving"
	if nights == 0:
		done.emit()
		hide()

func _on_hidden():
	queue_free()
