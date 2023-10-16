// Get input from player
var _keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
var _keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
var _keyJump = keyboard_check(vk_space) || keyboard_check(vk_up) || keyboard_check(ord("W"));

// Determine Direction
var _dir = _keyRight - _keyLeft

// Gradually slow down the player to 0 speed
if (hsp != 0)
{
	if (hsp < 0) hsp += 0.8;
	else hsp -= 0.8;
}

// Set move speed and direction
if (_dir != 0)
{
	if (_dir == 1) && (hsp >= 0)
	{
		hsp = hspWalk; //move right
	}
	else if (_dir == -1) && (hsp <= 0)
	{
		hsp = -hspWalk; //move left
	}	
}

// Figure out vertical movement
vsp = vsp + grv;

// Figure out if we can jump
if (canJump-- > 0) && (_keyJump)
{
	vsp = vspJump
	canJump = 0;
}

// Collision and movement
if (place_meeting(x + hsp, y, oWall))
{
	while (abs(hsp) > 0.1)
	{
		hsp *= 0.5;
		if (!place_meeting(x + hsp, y, oWall)) x += hsp;
	}
	hsp = 0;
}
x += hsp;

if (place_meeting(x, y + vsp, oWall))
{
	if (vsp > 0) canJump = 10;
	while (abs(vsp) > 0.1)
	{
		vsp *= 0.5;
		if (!place_meeting(x, y + vsp, oWall)) y += vsp;
	}
	vsp = 0;
}
y += vsp;