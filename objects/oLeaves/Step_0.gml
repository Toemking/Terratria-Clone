if original == true  && place_meeting(x,y,oAir)  {
	var air = instance_nearest(x,y,oAir)
	instance_destroy(air)
}


if global.selected == id {

	global.selX=x
	global.selY=y
	global.selSize=1
	global.drawSel=true
}


if!place_meeting(x,y+1,oWood) && destroying == false {
	destroying = true;
	var air_save = instance_create_depth(x,y,0,oAir)
	air_save.original = true
}
if destroying == true {
	y += 2;
	
	if place_meeting(x,y,oCollison) {
		inventory_gain_item(22,1)
		instance_destroy()
	}
}

