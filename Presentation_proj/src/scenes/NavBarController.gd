extends Node

func _ready():
	$Control/logoBtn.connect("pressed",self,"_pressedCall")

func _pressedCall():
	MainController.SwitchTo(0)
