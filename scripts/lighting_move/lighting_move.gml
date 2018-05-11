var xOffset_ = argument0
var yOffset_ = argument1

//Set the instances
var light = instance_nearest(x+xOffset_,y+yOffset_,oCollison);

//Check to see if the instances are what its meant to be and if not set the var to noone
if !place_meeting(x+xOffset_,y+yOffset_,light) light = noone
var light_to_sky = false;
//Set the variables for the block
if instance_exists(light) {
	var r = collision_line_point(light.x-1, light-1, light.x, -100, oCollison, true, true)
	if r[0] == noone{
		var light_to_sky = true;
	}
	if light.lightStrength != 1 && light_to_sky {
		light.lightStrength = global.light_destroy - 0.05
		light.lightChange = false
	}
}
