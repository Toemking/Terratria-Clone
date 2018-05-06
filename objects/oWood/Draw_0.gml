/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
/// @description Insert description here
// You can write your code in this editor

draw_self()
draw_set_color(c_white)


if dur != 0 and global.selected == id draw_sprite_ext(sBlockDestroy, ceil(dur/10),x,y,0.5,0.5,0,c_white,1)

if part == 0 {
	draw_sprite(sLeftTrunk, trunk, x-8,y)
	draw_sprite(sRightTrunk, trunk, x+8,y)
}

if (image_index == 9 || image_index == 10 || image_index == 11)  {
	draw_sprite(sRightBranch, trunk, x,y)
}
if (image_index == 15 || image_index == 16 || image_index == 17) {
	draw_sprite(sLeftBranch, trunk, x,y)
}