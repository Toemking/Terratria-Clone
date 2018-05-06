
surface_set_target(surf)

draw_clear(c_black)


with(oCollison)
{
	gpu_set_blendmode(bm_src_color)
	draw_sprite_ext(sSquareLight,0,x,y, 1, 1, 0, c_white, lightStrength)
	gpu_set_blendmode(bm_normal)
}


	
surface_reset_target()
draw_surface_ext(surf,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),1,1,0,c_white,0.9)
