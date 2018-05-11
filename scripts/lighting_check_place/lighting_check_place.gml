var xOffset_ = argument0
var yOffset_ = argument1

//Set the instances
var light = instance_nearest(x+xOffset_,y+yOffset_,oCollison);

//Check to see if the instances are what its meant to be and if not set the var to noone
if !place_meeting(x+xOffset_,y+yOffset_,light) light = noone

//Set the variables for the block
if instance_exists(light) {
	if light.lightStrength != 1 {
		light.lightStrength = global.light_destroy - 0.05
		light.lightChange = false
	}
}
