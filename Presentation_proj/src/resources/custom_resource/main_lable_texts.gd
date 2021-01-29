extends Resource
class_name String_list

export (Array, String) var string_list

func getItemByIndex(index : int) -> String:
	if string_list.size() - 1 >= index:
		return string_list[index]
	else : return ''
