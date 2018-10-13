// argument0 the target 
// argument1 the type of the surrounding object
// argument2 the range


var list = ds_list_create();
ds_list_add(list, argument0);
var start_number = 0;
var end_number = 1;
instance_activate_all();
var size = ds_list_size(list);

for (var i = 0; i<argument1; i++)
{
	var add_number = 0;
	for (var j = start_number; j < end_number; j++)
	{	
		var selected = list[| j];
		var this_layer = GetSurrounding(selected.row, selected.column, oHexGround);
		size = ds_list_size(this_layer);
		for (var k = 0; k < size; k++)
		{
			var current = this_layer[| k];
			var idx = ds_list_find_index(list, this_layer[| k]);
			if (idx == -1)
			{
				ds_list_add(list, this_layer[| k]);
				add_number++;
			}
		}
	}
	start_number = end_number;
	end_number += add_number;
}

ds_list_delete(list, 0);

return list;