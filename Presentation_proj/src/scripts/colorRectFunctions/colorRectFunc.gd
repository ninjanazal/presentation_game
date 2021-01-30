extends ColorRect
signal finish_fadeIn
signal finish_fadeOut

onready var _backgroundSwitcher := self

func StartFade(fadeAmout : int):
	while _backgroundSwitcher.color.a < 1:
		_backgroundSwitcher.color.a += fadeAmout * get_process_delta_time()
		if(_backgroundSwitcher.color.a > 1): _backgroundSwitcher.color.a = 1
		yield(get_tree(),"idle_frame")
	
	emit_signal("finish_fadeIn")
	_startFadeOut(fadeAmout)

func _startFadeOut(fadeAmount : int):
	while _backgroundSwitcher.color.a > 0:
		_backgroundSwitcher.color.a -= fadeAmount * get_process_delta_time()
		if(_backgroundSwitcher.color.a < 0): _backgroundSwitcher.color.a = 0
		yield(get_tree(),"idle_frame")
	
	emit_signal("finish_fadeOut")
