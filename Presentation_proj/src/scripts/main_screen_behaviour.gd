extends Node

func _ready():
	$Button.connect("pressed",$"/root/MainController","SwitchTo",[1])
