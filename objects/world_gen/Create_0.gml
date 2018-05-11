global.block_length = 0;
above_ground = array_create(100000)

global.inventory = ds_grid_create(39, 2);
ds_grid_clear(global.inventory, 0);

instance_deactivate_all(true)
load_data();
if global.seed == 0 global.new = true
if global.new == true && global.seed != true {
	randomize()
	global.seed = round(random_range(1,9999))
	global.new = false
}
load_game()
random_set_seed(global.seed)
show_debug_message(global.seed)
global.length = generate(0)
global.length2 = global.length
var player = instance_create_depth(xxx,yyy,0,oPlayer)
player.flipped = 1
instance_activate_all()



/*random_set_seed(100)
instance_deactivate_all(true)
p = 41; //Height to gen
v = 2; //Increase height to generate
a = -1; //Decrease v by one
t = 1 //The chance out of ten to create a tree
g = 1 //Chance out of 50 to make a gold vein appear
c = 100 //Chance for cave to occur
;

for(i=0; i<room_width; i+=16) {
	var n = 0;
		for(j = 90 - p; j != 0; j--)
		{
			//instance_create_depth(i,544+n,-100,oSkyBlock)
			n += 16
		}
		var create_grass = instance_create_depth(i,room_height-(p*16),0,oCollison)
		create_grass.image_index = 2;
		create_grass.original = true;
		//instance_create_depth(i,room_height-(p*32),0,oSkyBlock)
		if t == round(random_range(1,20)) {
			instance_create_depth(i,room_height-(p*16),0,oTree)
	}
	for(m=room_height-((p-1)*16);m<room_height; m+= 16) {
			if m == room_height-((p-1)*16)+32 {
				var create_dirt = instance_create_depth(i,m,0, oCollison)
				create_dirt.image_index = 1;
				create_dirt.original = true;
			} else if m<room_height-((p-4)*16) {
				var create_dirt = instance_create_depth(i,m,0, oCollison)
				create_dirt.image_index = 1;
				create_dirt.original = true;
			}
	
	}
	//instance_create_depth(i,room_height-((p-1)*16)+(16*3),0, oUnderGroundLightSquare)
	//instance_create_depth(i,room_height-((p-1)*16)+(16*4),0, oUnderGroundLightSquare)
	//instance_create_depth(i,room_height-((p-1)*16)+(16*5),0, oUnderGroundLightSquare)
	for(b=room_height-((p-4)*16);b<room_height-16; b+= 16) {
		if g == round(random_range(1,10)) && b > 1250 {
			ore_vein(7,6)	
		}
		if g == round(random_range(1,10)) && b > 1000 {
			ore_vein(7,5)	
		}
		if g == round(random_range(1,10)) && b > 800 {
			ore_vein(7,12)	
		} else{
			var create_stone = instance_create_depth(i,b,0, oCollison)
			create_stone.image_index = 3;
			create_stone.original = true;
			
		}
		
	}
	//instance_create_depth(i,1504,0,oBedrock)
	v+=a
	p+=v
	a=choose(-1,-1,0,0,0,0,0,0,0,0,0,0,0,1,2)
	if p >40 {p=40 v= 0 a =-abs(a)}
	if p <35  {p=35v= 0 a = abs(a)}
	
	
	
	
	
}

instance_activate_all()
instance_destroy()
