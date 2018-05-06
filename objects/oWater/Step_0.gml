event_inherited()
/// @description Water physics	
/*if(x >= camera_get_view_x(view_camera[0]) && x <= camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) ) {
	if(!place_meeting(x - 16, y,oWater)) instance_create_depth(x - 16,y, 0,oWater)
	if(!place_meeting(x + 16, y,oWater)) instance_create_depth(x + 16,y, 0,oWater)
	if(!place_meeting(x, y +16,oWater)) instance_create_depth(x,y +16, 0,oWater)
}
