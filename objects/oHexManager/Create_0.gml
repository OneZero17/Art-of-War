globalvar grid;
grid = ds_grid_create(50,50);

global.x_size = 120;
global.y_size = 105;

globalvar selectedPiece;
globalvar buttonFrame;
globalvar healthBar;
selectedPiece = -1;
buttonFrame = -1;
healthBar = -1;

ds_grid_clear(grid,0);

var xOffset = 120;

for (var i = 0; i < ds_grid_width(grid); i++) {
	for (var j = 0; j < ds_grid_height(grid); j++) {
		switch(grid[# i,j]) {
			case 0:
				XY = GetXYFromColumnRow(j, i);
				var hex = instance_create_depth(XY[0], XY[1] ,10,oHexGround);
				hex.row = j;
				hex.column = i;
			break;
		}
	}
}

for (var i = 0; i< 10; i++)
{
	var rownum = 5;
	XY = GetXYFromColumnRow(rownum, i);
	var knight = instance_create_depth( XY[0], XY[1], 5, Knight);
	knight.row = rownum;
	knight.column = i;
	knight.image_xscale = 0.06;
	knight.image_yscale = 0.06;
}

optimize = false;
alarm[0] = room_speed*2;