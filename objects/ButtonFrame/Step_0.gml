/// @description Insert description here
// You can write your code in this editor
if (image_yscale < 0.2)
	image_yscale += 0.02
else
{
	if (moveButton = 0)
	{
	moveButton = instance_create_depth(x + sprite_width/2, y + sprite_height /4, 3, MoveButton);
	moveButton.image_xscale = 0.15;
	moveButton.image_yscale = 0.15;
	attackButton = instance_create_depth(x + sprite_width/2, y + 3* sprite_height /4, 3, AttackButton);
	attackButton.image_xscale =0.15;
	attackButton.image_yscale =0.15;
	}
	
}

if (instance_position(mouse_x,mouse_y,ButtonFrame) == id)
	mouseOn = true;
	
moveButton.x = x + sprite_width/2;
moveButton.y = y + sprite_height/4;
attackButton.x = x + sprite_width/2;
attackButton.y = y + 3* sprite_height /4;
	