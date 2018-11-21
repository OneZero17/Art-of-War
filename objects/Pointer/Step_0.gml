/// @description Insert description here
// You can write your code in this editor
image_speed =1;

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

if (timeCount % 4 = 0 && isShadow == false)
{
	if (currentShadowNum < maxShadowNum)
	{
		with (instance_create(x, y, Pointer))
		{
			isShadow = true;
			image_alpha = initialShadowAplha;
			image_xscale = 0.13;
			image_yscale = 0.13;
		}
		currentShadowNum = currentShadowNum + 1;
		initialShadowAplha = initialShadowAplha /2;
	}
}

if (rotateAngle > 20)
	speedup = false;
	
if (rotateAngle < -3)
	instance_destroy(id);
