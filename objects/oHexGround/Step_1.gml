/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button_pressed(mb_left)) {
	if (instance_position(mouse_x,mouse_y,oHexGround) == id) {
		if (selectedPiece != -1)
		{
			var idx = ds_list_find_index(selectedPiece.surroundingList, id);
			if(idx != -1)
			{
				selectedPiece.x = x;
				selectedPiece.y = y;
				selectedPiece.row = row;
				selectedPiece.column = column;
				selectedPiece.surroundingList = 0;
			}
		}
	} 
}
