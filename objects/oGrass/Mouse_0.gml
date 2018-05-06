
if global.selected == id {
	dur ++
	if dur == max_dur {
		global.selected = 0;
		inventory_gain_item(2,1)
		var air_save = instance_create_depth(x,y,0,oAir)
		air_save.original = true
		instance_destroy()
	}
}