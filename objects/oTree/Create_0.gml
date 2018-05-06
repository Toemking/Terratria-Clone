mf=4
mk=2
mt=10
//Create the trunk
for(t = 0; t <= mt; t++) {
	var tree = instance_create_depth(x,y-(t*8)-16, 1, oWood)
	if t == 0 && instance_exists(tree){ 
		tree.image_index = choose(12,13,14)
	}
	tree.part = t
	
}
var leaf = instance_create_depth(x,y-(t*8)-16,1,oLeaves)
