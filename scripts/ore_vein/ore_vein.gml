/// @function ore_vein(size,ore_id)
/// @param size
/// @param id

var size = argument0
var ore_id = argument1
var veinOffsetX = 0
var veinOffsetY = 0
for(var VeinSize=round(random_range(1,size)); VeinSize > 0; VeinSize -= 1)
{
		var create_ore = instance_create_depth(xx+veinOffsetX,yy+16+veinOffsetY,0, ore_id)
		var VeinX=choose(0,0,0,1,1,1,-1)
		var VeinY=choose(0,0,0,1,1,1)
		veinOffsetX += VeinX * 32
		veinOffsetY += VeinY * 32
		
}