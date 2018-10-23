/// @description Insert description here
// You can write your code in this editor

if (speedup)
{
	image_angle+=rotateAngle;
	rotateAngle+=0.5;
}
else
{
	image_angle+=rotateAngle;
	rotateAngle-=1;
}

if (rotateAngle > 15)
	speedup = false;
	
if (rotateAngle < -5)
	speedup = true;
