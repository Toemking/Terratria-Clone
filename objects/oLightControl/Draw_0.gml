
surface_set_target(surf)

draw_clear(c_black)


with(oCollison)
{
	gpu_set_blendmode(bm_src_color)
	draw_sprite_ext(sSquareLight,0,x,y, 0.25,0.25, 0, c_white, lightStrength+1)
	gpu_set_blendmode(bm_normal)
}


	
surface_reset_target()
draw_surface_ext(surf,-0,-0,1,1,0,c_white,1)
