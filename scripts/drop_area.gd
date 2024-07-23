extends TextureRect 

  
#The dropping functionality which is mostly built-in code 
func can_drop_data(at_position, data): 
	return data 

  
func drop_data(at_position, data): 
	texture = data
