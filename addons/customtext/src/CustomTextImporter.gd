tool
extends EditorImportPlugin

func get_importer_name():
	return "customtext.resource"

func get_visible_name():
	return "CustomText Resource";

func get_recognized_extensions():
	return ["json", "tjs", "xml", "rml"]

func get_save_extension():
	return "res";

func get_resource_type():
	return "Resource";

func get_import_options(preset):
	return []

func get_preset_count():
	return 0

func import(source_file, save_path, options, platform_variants, gen_files):
	var resource = load("res://addons/customtext/src/CustomTextResource.gd").new()
	resource.load(source_file)
	
	var filename = save_path + "." + get_save_extension()
	return ResourceSaver.save(filename, resource)
