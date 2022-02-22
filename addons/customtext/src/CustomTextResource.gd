extends Resource
class_name CustomTextResource

export(String) var text

func load(source_file):
	var file = File.new()
	if file.open(source_file, File.READ) != OK:
		return FAILED
	text = file.get_as_text()
	file.close()
