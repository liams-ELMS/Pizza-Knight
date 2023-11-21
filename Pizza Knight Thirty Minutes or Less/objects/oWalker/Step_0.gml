vsp = vsp + grv
hsp = hspWalk

// Collision and movement
if (place_meeting(x + hsp, y, oWall))
{
	while (abs(hsp) > 0.1)
	{
		hsp *= 0.5;
		if (!place_meeting(x + hsp, y, oWall)) x += hsp;
	}
	hspWalk = -hspWalk;
}
x += hsp;

if (place_meeting(x, y + vsp, oWall))
{
	while (abs(vsp) > 0.1)
	{
		vsp *= 0.5;
		if (!place_meeting(x, y + vsp, oWall)) y += vsp;
	}
	vsp = 0;
}
y += vsp;

if (place_meeting(x,y,oPlayer))
{
	if (oPlayer.invuln = 120)
	{
		oPlayer.curHealth--;
		oPlayer.state = 4;
	}
}

if (curHealth <= 0) instance_destroy();