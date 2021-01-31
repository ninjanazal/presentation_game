extends Control

func _ready():
	$Button.connect("pressed",self,"_enablePopUp")

func _enablePopUp():
	$"PopUp-Exit".visible = true
	$"PopUp-Exit/Panel/Button".connect("pressed",self,"_exitPopUp")

func _exitPopUp():
	$"PopUp-Exit".visible = false
	MainController.SwitchTo(0)
