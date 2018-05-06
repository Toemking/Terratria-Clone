if (file_exists("savedgame.sav"))
{
	var _wrapper = LoadJSONFromFile("savedgame.sav");
	var _list = _wrapper[? "ROOT"];
	
	for (var i = 0; i < ds_list_size(_list); i++)
	{
		var _map = _list[| i];
		
		var _obj = _map[? "obj"];
		with (instance_create_layer(0,0,layer,asset_get_index(_obj)))
		{
			x = _map[? "x"];
			y = _map[? "y"];
			image_blend = _map[? "image_blend"];
			image_index = _map[? "image_index"];
			original = _map[? "original"];
		}
	}
	
	ds_map_destroy(_wrapper);
	instance_deactivate_object(oSaveme)
}
