extends Control

func _on_Control4_visibility_changed():

	# Get the TextureArray from the global script
	var social_media_hbox = $SocialMediaHbox
	var dropArea = preload("res://DropArea.tscn")
	
	#This is to fix duplication bug when going back to this page from another page
	for social_media in social_media_hbox.get_children():
		social_media_hbox.remove_child(social_media)
	
	#Add taonga array to the top hbox
	for texture in SocialMediaVars.taonga_array:
		var textureRect = TextureRect.new()
		textureRect.texture = texture.texture
		textureRect.expand_mode = true
		textureRect.stretch_mode = TextureRect.STRETCH_SCALE_ON_EXPAND
		
		textureRect.custom_minimum_size = Vector2(30,18)
		
		var taonga_hbox = $ToangaHbox2
		taonga_hbox.add_child(textureRect)
		
	#Add social media to top hbox and create a vbox for each one
	#Each vbox will have "dropable" areas equal to the amount of toanga
	for texture in SocialMediaVars.social_array:
		# Create a VBoxContainer to hold the icons
		var vbox_container = VBoxContainer.new()
		var textureRect = TextureRect.new()
		
		textureRect.texture = texture.texture
		textureRect.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
		textureRect.expand = true
		textureRect.rect_min_size = Vector2(200,200)
		
		# Add the TextureRect to thSocialMediaVboxe VBoxContainer
		vbox_container.add_child(textureRect)
		vbox_container.add_constant_override("separation", 15)
		
		#Loop through taonga array and add "droppable" area textureRects
		for n in 6:
			var instance = dropArea.instance()
			instance.expand = true
			textureRect.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
			instance.margin_left = 50
			vbox_container.add_child(instance)
		
		# Add each vbox to the main social media hbox 
		social_media_hbox.add_child(vbox_container)

