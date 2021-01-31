extends Resource
class_name DisplayInformation

export (String, MULTILINE) var text setget ,getText
export (float, 0.2, 5, 0.05) var timeOn setget ,getTimeOn

func getText() -> String:
	return text

func getTimeOn() -> float:
	return timeOn
