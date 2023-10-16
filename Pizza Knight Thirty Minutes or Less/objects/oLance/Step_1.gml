// Follow the players position
x = oPlayer.x;
y = oPlayer.y;

// Point towards the mouse
image_angle = point_direction(x,y, mouse_x,mouse_y)

// Attack towards mouse
firingdelay--;
if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
	firingdelay = 30;
	with (instance_create_layer(x,y,"Swing",oSwing))
	{
		direction = other.image_angle;
		image_angle = direction;
	}
}

// Bounce off of spikes
// Part 3 ~40 minutes in