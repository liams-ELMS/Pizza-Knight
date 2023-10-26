// Stick player into wooden surfaces
if (place_meeting(x,y,oWoodenFloor)) oPlayer.state = 2; // Most code within oPlayer Step
if (place_meeting(x,y,oWoodenWall)) oPlayer.state = 3; // Most code within oPlayer Step

// Bounce off of steel surfaces
if (place_meeting(x,y,oSteel))
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
	
	else oPlayer.vsp = -8;
	
	if (oPlayer.vsp = 0) oPlayer.vsp = -12; 
}

// Remove Object
instance_destroy();

// Stored away incase I want it to be a timer again later
//if timer >= 10
//{
//	instance_destroy();
//}
//timer++;