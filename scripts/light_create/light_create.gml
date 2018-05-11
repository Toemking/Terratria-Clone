var xOffset_ = argument0;
var yOffset_ = argument1;
//Choose the light
var light = instance_nearest(xOffset_,yOffset_,oCollison);
//Check if light is where its meant to be
if !place_meeting(xOffset_,yOffset_,light) light = noone;
//Return the light strenght
if instance_exists(light) return light.lightStrength 