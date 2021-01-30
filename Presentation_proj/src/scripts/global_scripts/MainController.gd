extends Node

onready var bodyController = get_node("/root/root/view/body") as BodyController

func SwitchTo(pannelType : int):
	self.bodyController.SetPannel(pannelType)
	print("Switching to {index}".format({"index":pannelType}))
