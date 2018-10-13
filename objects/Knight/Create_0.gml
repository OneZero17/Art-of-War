/// @description Insert description here
selected = false;
surroundingList = ds_list_create();
row = -1;
column = -1;

for (var i = 0; i < 6; i++) {
	connections[i] = -1;
}

alarm[0] = room_speed;
tileRange = 0;
highlited = false;
checkConnection = false;

with(oHexGround) {
	checkConnection = true;
}

