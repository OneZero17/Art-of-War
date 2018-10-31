/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button_pressed(mb_left)) {
	if (instance_position(mouse_x,mouse_y,Knight) == id) {
		if (selectedPiece == id) {
			selectedPiece = undefined;
		} else {
			selectedPiece = id;
		}
	} 
}

if (selectedPiece != id) {
	if (instance_position(mouse_x,mouse_y,Knight) == id) {
		image_blend = c_aqua;
	} else {
		image_blend = c_white;
	}
} else {
	image_blend = c_blue;
}

