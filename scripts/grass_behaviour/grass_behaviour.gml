if object_index == oGrass {
	if !place_meeting(x+16,y,oCollison) && !place_meeting(x-1,y,oCollison) && (!place_meeting(x,y-1,oCollison)) {
		image_index = 3
	}
	else if(!place_meeting(x+16,y,oCollison)) && (!place_meeting(x,y-1,oCollison)) {
		image_index = 1
	} else if(!place_meeting(x-1,y,oCollison)) && (!place_meeting(x,y-1,oCollison)) {
		image_index = 2
	} else if(place_meeting(x,y-1,oGrass)){
		image_index = 5
	} else if(!place_meeting(x,y-1,oCollison)) {
		image_index = 0
	} //else if place_meeting(x-1,y,oCollison) && place_meeting(x+16,y,oCollison) && place_meeting(x,y-1,oCollison)  instance_change(oDirt,true)

}