tool
extends EditorPlugin

var customtext_editor = preload("res://addons/customtext/src/CustomTextEditor.tscn").instance()
var customtext_editor_icon = preload("res://addons/customtext/plugin_icon.png")
var customtext_importer = preload("res://addons/customtext/src/CustomTextImporter.gd").new()

func _enter_tree():
	add_import_plugin(customtext_importer)
	
	get_editor_interface().get_editor_viewport().add_child(customtext_editor)
	make_visible(false)

func _exit_tree():
	remove_import_plugin(customtext_importer)
	
	if customtext_editor: customtext_editor.queue_free()

func make_visible(visible):
	if customtext_editor: customtext_editor.visible = visible

func has_main_screen():
	return true

func get_plugin_name():
	return "EO"

func get_plugin_icon():
	return customtext_editor_icon
