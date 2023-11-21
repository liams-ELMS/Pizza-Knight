// Follow the players position
x = oPlayer.x;
y = oPlayer.y;

if (oPlayer.state < 2)
{
	// Point towards the mouse
	image_angle = point_direction(x,y, mouse_x,mouse_y)

	// Attack towards mouse
	if (firingdelay > 0) firingdelay--;
	if (mouse_check_button(mb_left)) && (firingdelay <= 0)
	{
		firingdelay = 30;
		with (instance_create_layer(x,y,"Swing", oSwing))
		{
			direction = other.image_angle;
			image_angle = direction;
		}
		with (instance_create_layer(x + lengthdir_x(180, image_angle), y + lengthdir_y(180, image_angle), "Swing", oSweet))
		{
			direction = other.image_angle;
			image_angle = direction;
		}
	}
}

if (oPlayer.state = 2) //floors
{
	oPlayer.x = x
	if (image_angle >= 15) and (image_angle <= 165) image_angle = 90; // Stuck to ceiling
	else if (image_angle >= 195) and (image_angle <= 345) image_angle = 270; // Stuck to floor
	else oPlayer.state = 1 // Angle too steep, bail
}

if (oPlayer.state = 3) //walls
{ 
	oPlayer.y = y
	if (image_angle >= 0) and (image_angle <= 75) or (image_angle >= 285) and (image_angle <= 360) image_angle = 0; // Left side
	else if (image_angle >= 105) and (image_angle <= 255) image_angle = 180; // Right side
	else oPlayer.state = 1 // Angle too steep, bail
}

// Move lance towards mouse during attack
x = x + lengthdir_x(firingdelay*2, image_angle);
y = y + lengthdir_y(firingdelay*2, image_angle);