if (place_meeting(x,y,oPlayer))
{
	if (oPlayer.invuln = 120)
	{
		oPlayer.curHealth--;
		oPlayer.state = 4;
	}
	instance_destroy();
}

if (place_meeting(x,y,oWall)) instance_destroy();

