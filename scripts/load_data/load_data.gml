ini_open("saveData.ini");
global.seed = ini_read_real("Variables","seed",0);
global.new = ini_read_real("Variables","new",0);
xxx = ini_read_real("Variables","x",0);
yyy = ini_read_real("Variables","y",0);
inventory_load()
//The third value here will set the score variable if there is no save file
ini_close();