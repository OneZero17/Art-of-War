/// @description Insert description here
// You can write your code in this editor

if (speedup)
{
	image_angle+=rotateAngle;
	rotateAngle+=0.7;
}
else
{
	image_angle+=rotateAngle;
	rotateAngle-=1;
}

if (rotateAngle > 20)
	speedup = false;
	
if (rotateAngle < -7.5)
	speedup = true;
