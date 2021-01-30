extends Node

onready var bodyController = get_node("/root/root/view/body") as BodyController

func SwitchTo(pannelType : int):
	print("Switch to")
	self.bodyController.SetPannel(pannelType)
