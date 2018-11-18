/// @description Insert description here
// You can write your code in this editor
if (selectedPiece != -1)
{
	var idx = ds_list_find_index(selectedPiece.surroundingList, id);
	if (idx == -1)
		image_blend = c_white;
	else
	    image_blend = c_aqua;	
}
else
	image_blend = c_white;
	
if (instance_position(mouse_x,mouse_y,oHexGround) == id) 
	image_index = 1;
else
    image_index = 0;