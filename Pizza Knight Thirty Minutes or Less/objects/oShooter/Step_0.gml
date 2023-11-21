timer--;

if (timer = 0)
{
	with (instance_create_layer(x,y,"Harmful", oArrow))
	{
		if (other.facing = 0) speed = -5;
		else 
		{
			speed = 5;
			image_angle = 180;
		}
	}
	timer = curTimer;
}


