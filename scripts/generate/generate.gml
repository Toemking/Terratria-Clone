var sh = (room_height / 2) - floor((room_height/10))

sh = floor(sh/ 16) * 16

var ah  = sh;

var starting_room = argument0;
var ending_room = argument0 + 384;
var dirt_level;
var stone_level;
var l = ah;



for(xx = starting_room; xx < ending_room; xx += 16)
{
	instance_create_depth(xx, ah,0, oGrass)
	if 1 == round(random_range(1,20)) {
			var tree = instance_create_depth(xx,ah+8,0,oTree)
			
		}
	
	dirt_level = ((room_height-ah)/16)*16
	
	stone_level = 1000

	//Dirt level
	for(yy = ah; yy < dirt_level; yy+=16) {
		var dirt = instance_create_depth(xx, yy+16,0, oDirt)
		if (yy-ah == 0 || yy-ah == 16 || yy-ah == 32) dirt.depth = -2
		l = yy
	
	}
	
	//Stone level
	for(yy = l; yy < stone_level; yy+=16) {
		if (yy >= ah) {
			instance_create_depth(xx, yy+16,0, oStone)
			if 1 == round(random_range(1,200)) {
				ore_vein(round(random_range(1,10)),oCoal)	
			}
			if 1 == round(random_range(1,200)) {
				ore_vein(round(random_range(1,10)),oGold)	
			}
			if 1 == round(random_range(1,200)) {
				ore_vein(round(random_range(1,10)),oCopper)	
			}
		}

	}
	ah += choose(-16,0,16)

}

return ending_room;