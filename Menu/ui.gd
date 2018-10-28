extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var rotation_speed = 2

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(true)

func _process(delta):
	var size = get_viewport().get_rect().size
	set_size(size)
	
	get_node("monkey/Suzanne").rotate_y(delta * rotation_speed)


func _on_play_button_pressed():
	print("Playing the game!")
	
#	get_tree().change_scene("res://game.tscn")
	get_tree().quit()
	
