extends Node

export (Array, Resource) var states

export(float) var loadingAngularSpeed = 25.0
onready var _loading_texture := get_node("TextureRect")
onready var _info_lable := get_node("info_lable")


func _ready():
	_info_lable.set_text("- - - - -")

func _process(delta):
	_loading_texture.set_rotation_degrees(_loading_texture.get_rotation_degrees() +\
		loadingAngularSpeed * delta)


func init():
	_displayInformationCycle()

func _displayInformationCycle():
	var currentMessage = 0
	while currentMessage <= states.size() -1:
		
		_info_lable.set_text(states[currentMessage].getText());
		yield(get_tree().create_timer(states[currentMessage].getTimeOn()), "timeout")
		currentMessage +=1
	MainController.SwitchTo(2)
	
