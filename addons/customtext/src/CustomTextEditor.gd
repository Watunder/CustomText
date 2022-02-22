tool
extends Control

onready var itemList = $GridContainer/ItemList
onready var editor = $GridContainer/VBoxContainer/HBoxContainer/TextEdit
onready var richlabel = $GridContainer/VBoxContainer/HBoxContainer/TextEdit/RichTextLabel
onready var editor2 = $GridContainer/VBoxContainer/HBoxContainer/TextEdit/TextEdit2
onready var preview = $GridContainer/VBoxContainer/HBoxContainer/ViewportContainer
onready var label = $GridContainer/VBoxContainer/Panel/Label

func _on_KRKR_button_down():
	editor2.visible = false

func _on_RmlUi_button_down():
	editor2.visible = true

func _on_Script_pressed():
	editor.visible = false if editor.visible == true else true

func _on_Preview_pressed():
	preview.visible = false if preview.visible == true else true
