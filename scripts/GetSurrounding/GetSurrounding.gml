// argument0 the target row
// argument1 the target column
// argument2 the type of the surrounding object

var list = ds_list_create();
instance_activate_all();
var XY = GetXYFromColumnRow(argument0, argument1);


//if (argument0 > 0) {
	ds_list_add(list, instance_nearest(XY[0] - global.x_size, XY[1], argument2));
//}

//if (argument1 > 0) {
	ds_list_add(list, instance_nearest(XY[0] - global.x_size / 2, XY[1] - global.y_size, argument2));
	ds_list_add(list, instance_nearest(XY[0] + global.x_size / 2, XY[1] - global.y_size, argument2));
//}

//if (argument0 < ds_grid_width(grid) - 1) {
	ds_list_add(list, instance_nearest(XY[0] + global.x_size, XY[1], argument2));
//}

//if (argument1 < ds_grid_height(grid) - 1) {
	ds_list_add(list, instance_nearest(XY[0] + global.x_size / 2, XY[1] + global.y_size, argument2));
	ds_list_add(list, instance_nearest(XY[0] - global.x_size / 2, XY[1] + global.y_size, argument2));
//}

return list;