var 
left = keyboard_check(ord("A")),
right = keyboard_check(ord("D")),
up = keyboard_check(ord("W")),
down = keyboard_check(ord("S")),
camX = camera_get_view_x(view_camera[0]),
camY = camera_get_view_y(view_camera[0]),
camW = camera_get_view_width(view_camera[0]),
camH = camera_get_view_height(view_camera[0]),
roomW = ds_grid_width(grid)*120,
roomH = ds_grid_height(grid)*105;

//Camera Movement
if (left) camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0])-10,camera_get_view_y(view_camera[0]));
if (right) camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0])+10,camera_get_view_y(view_camera[0]));
if (up) camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])-10);
if (down) camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])+10);

//Activate only what's in our region
if (optimize) {
	instance_activate_region(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]),true);
	instance_deactivate_region(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]),false,true);
}


// Relation between selected piece and button frame
if (selectedPiece != -1 && buttonFrame == -1)
	buttonFrame = instance_create_depth(selectedPiece.x, selectedPiece.y, 4, ButtonFrame);

if (selectedPiece == -1 && buttonFrame !=-1)
{
	instance_destroy(buttonFrame);
	buttonFrame = -1;
}

if (selectedPiece != -1 && buttonFrame != -1)
{
	buttonFrame.x = selectedPiece.x;
	buttonFrame.y = selectedPiece.y;
}

// Relation between selected piece and display health bar




