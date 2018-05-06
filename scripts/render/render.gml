if global.saving == false {
	instance_deactivate_object(oCollison)
	instance_activate_region(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]), true)
	instance_activate_region(camera_get_view_x(view_camera[1]),camera_get_view_y(view_camera[1]),camera_get_view_width(view_camera[1]),camera_get_view_height(view_camera[1]), true)
}
else if global.saving == true  instance_activate_all()
 