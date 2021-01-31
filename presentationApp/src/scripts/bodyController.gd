extends Control
class_name BodyController

export(Array, NodePath) var _pannels
export(float) var fadingSpeed = 1

var _currentPannel = 0

func _ready():
	for i in range(_pannels.size()):
		(get_node(_pannels[i]) as CanvasItem).visible = (i == _currentPannel)


# define the pannel
func SetPannel(panelIndex : int):
	if(_pannels.size() - 1 >= panelIndex):
		_switchPannel(panelIndex)


func _switchPannel(panelIndex : int):
	$overlap_color.StartFade(fadingSpeed)
	yield($overlap_color, "finish_fadeIn")
		
	(get_node(_pannels[_currentPannel]) as CanvasItem).visible = false
	(get_node(_pannels[panelIndex]) as CanvasItem).visible = true 
	
	yield($overlap_color, "finish_fadeOut")
	_currentPannel = panelIndex
	
	if (get_node(_pannels[_currentPannel]) as Object).has_method("init"):
		get_node(_pannels[_currentPannel]).init()
