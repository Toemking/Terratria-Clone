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
if place_meeting(x,y,oAir) instance_destroy()

if depth == 3 && !place_meeting(x,y-1,oCollison) {
	depth = -3
}