mouse_over = mouseOver(x,y,sprite_get_width(sprite_index),sprite_get_height(sprite_index))

if global.selected == id {
	
	global.selX=x
	global.selY=y
	global.selSize=size
	global.drawSel=true

}

if mouse_over == false or global.selected != id or mouse_check_button(mb_left) == false{
	dur=0	
}
