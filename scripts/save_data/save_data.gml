if (file_exists("Save.sav")) file_delete("Save.sav");
ini_open("saveData.ini");
ini_write_real("Variables", "seed", global.seed);
ini_write_real("Variables", "new", global.new);
ini_write_real("Variables", "x", oPlayer.x);
ini_write_real("Variables", "y", oPlayer.y);
show_debug_message(ini_read_real("Variables","x",0))
inventory_save()


ini_close(); //Remember to close the INI or you'll have a memory leak