/// @description Insert description here
// You can write your code in this editor
if (selectedPiece != undefined)
{
	var idx = ds_list_find_index(selectedPiece.surroundingList, id);
	if (idx == -1)
		image_blend = c_white;
	else
	    image_blend = c_aqua;	
}
else
	image_blend = c_white;