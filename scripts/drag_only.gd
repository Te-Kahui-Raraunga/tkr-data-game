extends TextureRect 

  
func get_drag_data(at_position): 
	var textureRect = TextureRect.new() 
	textureRect.texture = texture 
	textureRect.expand = true 
	textureRect.rect_size = Vector2(140,40) 
	set_drag_preview(textureRect) 

	return texture 
  
#The dropping functionality which is mostly built-in code 
func can_drop_data(at_position, data): 
	return data 

  
func drop_data(at_position, data): 
	self.texture = data 
 
