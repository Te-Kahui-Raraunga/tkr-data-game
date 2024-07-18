extends Node2D

func _on_Continue1_pressed():
	$Control1.visible = false
	$Control2.visible = true

func _on_Continue2_pressed():
	$Control2.visible = false
	$Control3.visible = true

func _on_Continue3_pressed():
	$Control3.visible = false
	$Control4.visible = true

func _on_Continue4_pressed():
	$Control4.visible = false
	$Control5.visible = true

func _on_Continue5_pressed():
	$Control5.visible = false
	$Control6.visible = true

##Function to toggle the visibility of the map lines
var texture_gline
var texture_fline
var texture_sline
var texture_iline
var texture_tline

func _ready():
	texture_gline = $Control5/GLine
	
	texture_fline = $Control5/FLine
	
	texture_sline = $Control5/SLine
	
	texture_iline = $Control5/ILine
	
	texture_tline = $Control5/TLine

func _on_gbtn_pressed():
	texture_gline.visible = not texture_gline.visible
	
func _on_fbtn_pressed():
	texture_fline.visible = not texture_fline.visible
	
func _on_sbtn_pressed():
	texture_sline.visible = not texture_sline.visible

func _on_ibtn_pressed():
	texture_iline.visible = not texture_iline.visible

func _on_tbtn_pressed():
	texture_tline.visible = not texture_tline.visible


func _on_Back2_pressed():
	$Control1.visible = true
	$Control2.visible = false
	
	
func _on_Back3_pressed():
	$Control2.visible = true
	$Control3.visible = false


func _on_Back4_pressed():
	$Control3.visible = true
	$Control4.visible = false


func _on_Back5_pressed():
	
	$Control4.visible = true
	$Control5.visible = false

func _on_Back6_pressed():
	$Control5.visible = true
	$Control6.visible = false


