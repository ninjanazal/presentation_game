extends Control
class_name BodyController

export(Array, NodePath) var _pannels
export(float) var fadingSpeed = 1

onready var _backgroundSwitcher := get_node("overlap_color")
var _currentPannel = 0


func _ready():
	for i in range(_pannels.size()):
		(get_node(_pannels[i]) as CanvasItem).visible = (i == _currentPannel)



# define the pannel
func SetPannel(panelIndex : int):
	if(_pannels.size() - 1 >= panelIndex):
		_switchPannel(panelIndex)


func _switchPannel(panelIndex : int):
	while _backgroundSwitcher.color.a < 1:
		_backgroundSwitcher.color.a += fadingSpeed * get_process_delta_time()
		if(_backgroundSwitcher.color.a > 1): _backgroundSwitcher.color.a = 1
		yield(get_tree(),"idle_frame")
	
	(get_node(_pannels[_currentPannel]) as CanvasItem).visible = false
	(get_node(_pannels[panelIndex]) as CanvasItem).visible = true 
	
	while _backgroundSwitcher.color.a > 0:
		_backgroundSwitcher.color.a -= fadingSpeed * get_process_delta_time()
		if(_backgroundSwitcher.color.a < 0): _backgroundSwitcher.color.a = 0
		yield(get_tree(),"idle_frame")
