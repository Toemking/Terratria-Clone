
		if!place_meeting(x,y+1,oWood) && destroying == false &&  part != 0{
			destroying = true;
			direction = 200;
			image_angle = 200;
			speed = 0.5
			var air_save = instance_create_depth(x,y,0,oAir)
			air_save.original = true
		}

/*if bottom == false {
	if (image_index == 9 || image_index == 10 || image_index == 11) && part > 2  {
		var right_branch = instance_create_depth(x,y,0,oTreeBranch)
		right_branch.sprite_index = sRightBranch;
		right_branch.image_index = choose(0,1,2)
	}
	if (image_index == 15 || image_index == 16 || image_index == 17) && part > 2 {
		var left_branch = instance_create_depth(x,y,0,oTreeBranch)
		left_branch.sprite_index = sLeftBranch;
		left_branch.image_index = choose(0,1,2)
	}
	bottom = true
}*/
if destroying == true {
	direction --
	image_angle --
	
	if place_meeting(x,y,oCollison) {
		inventory_gain_item(4,1)
		instance_destroy()
	}
}

