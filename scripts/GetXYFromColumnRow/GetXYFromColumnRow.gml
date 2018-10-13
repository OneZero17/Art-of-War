// argument0 row
// argument1 column
if (argument0 mod 2 == 0) {
	var xOffset = global.x_size;
} else {
	var xOffset = global.x_size /2;
}

var XY;
XY[0] = xOffset + argument1 * global.x_size;
XY[1] = global.x_size /2 + argument0 * global.y_size;

return XY;