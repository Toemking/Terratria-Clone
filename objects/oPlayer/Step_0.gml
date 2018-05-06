// @description Player Movement

xChunkCurrent = floor(x/256)
ychunkCurrent = floor(y/256)

var hinput = keyboard_check (vk_right) - keyboard_check(vk_left);

if hinput != 0 {
	speed_[h] += hinput*acceleration_;
	speed_[h] = clamp(speed_[h], -max_speed_, max_speed_);
	get_flipped();
	sprite = player_run_current
	image_speed = flipped*hinput*.6;
} else {
	speed_[h] = lerp(speed_[h], 0, friction_);
	image_speed = 1;
	sprite = player_idle_current
}

if !place_meeting(x, y+1, oCollison) {
	speed_[ve] += gravity_;
	image_speed = 0;
	sprite = player_jump_current
} else if keyboard_check_pressed(vk_up) {
	speed_[ve] = jump_height_;
	x_scale_ = image_xscale*.8;
	y_scale_ = image_yscale*1.4;
}

move(speed_, 0);

//Check for landing
if place_meeting(x, y+1, oCollison) && !place_meeting(x, yprevious+1, oCollison) {
	x_scale_ = image_xscale * 1.8;
	y_scale_ = image_yscale * .8;
	
}

//Move back to normal scale value
x_scale_ = lerp(x_scale_, image_xscale, .2)
y_scale_ = lerp(y_scale_, image_yscale, .2)

if charge < 0 charge = 0;
if charge > 120 charge = 120

if place_meeting(x,y, oCollison) y-= 16


//Un set the tool if there is no one to lock it on
if global.inventorySlot != 4 {
	global.selected = 0;
	tool_locked = false
}


//Placing block
if global.item_data[# global.inventory[# global.inventorySlot, 0], 4] == "Block" 
{
	//Unset all block
	global.selected = 0; 
	tool_locked = false
}
if rotate_pick = true {
	pick_rotate += pix_rotate;
	if pick_rotate == pix_rotate * 18 {
		rotate_pick = false;
		pick_rotate = 0
	}
}
//camera_set_view_pos(view_camera[0],clamp(x - camera_get_view_width(view_camera[0])/2,-1536, 768),clamp(y - camera_get_view_height(view_camera[0])/2,-240,640)) 
camera_set_view_pos(view_camera[0],x - camera_get_view_width(view_camera[0])/2,y - camera_get_view_height(view_camera[0])/2) 
if instance_exists(world_gen) {
	if flipped == 1 {
		if(x >= (global.length/2) && canCreate && global.length <= 1024) {
			canCreate = false;
			global.length = generate(global.length)
			canCreate = true
		}
	} else if flipped == -1 {
		if(x <= (global.length2/2) && canCreate && global.length2 >= -1024 ) {
			canCreate = false;
			global.length2 = generate(global.length2 - 768)
			canCreate = true
		}
	}
}

/*if set == true {
	set = false;
	load_data();
	x = xx
}
/*show_debug_message(oPlayer.x)
show_debug_message(global.length)
show_debug_message(global.length2)