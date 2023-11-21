// Stick player into wooden surfaces
//if (place_meeting(x,y,oWoodenFloor)) // Stick into floor/ceiling
//{
//	oPlayer.state = 2; // Most code within oPlayer Step
	
	// Position the player
//	oPlayer.x = oPlayer.x + lengthdir_x(180, image_angle);
//	if (image_angle >= 0) and (image_angle <= 180) oPlayer.y = oPlayer.y + lengthdir_y(180, image_angle) + 180;
//	else oPlayer.y = oPlayer.y + lengthdir_y(180, image_angle) - 180;
//}

//if (place_meeting(x,y,oWoodenWall)) // Stick into wall
//{
//	oPlayer.state = 3; // Most code within oPlayer Step
//	
	// Position the player
//	oPlayer.y = oPlayer.y + lengthdir_y(180, image_angle);
//	if (image_angle >= 90) and (image_angle <= 270) oPlayer.x = oPlayer.x + lengthdir_x(180, image_angle) + 180;
//	else oPlayer.x = oPlayer.x + lengthdir_x(180, image_angle) - 180;
//}

// Bounce off of steel surfaces
if (place_meeting(x,y,oSteel) or place_meeting(x,y,oArrow))
{
	// Moving Right
	if (oPlayer.hsp > 0) 
	{ 
		oPlayer.hsp += 4;
		oPlayer.vsp = -8;
	}
	
	// Moving Left
	else if (oPlayer.hsp < 0) 
	{ 
		oPlayer.hsp -= 4; 
		oPlayer.vsp = -8;
	}
	
	// If stationary
	else oPlayer.vsp = -8;
	
	// Increase vertical height
	if (oPlayer.vsp = 0) oPlayer.vsp = -12; 
}

// Stored away incase I want it to be a removed after a timer again later
//if timer >= 10
//{
//	instance_destroy();
//}
//timer++;