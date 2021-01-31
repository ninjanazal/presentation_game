extends Node

func _ready():
	$Control/logoBtn.connect("pressed",$"/root/MainController" ,"SwitchTo",[0])
