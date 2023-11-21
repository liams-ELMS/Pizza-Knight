// Get input from player
var _keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
var _keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
var _keyJump = keyboard_check(vk_space) || keyboard_check(vk_up) || keyboard_check(ord("W"));
var _keyDuck = keyboard_check(vk_down) || keyboard_check(ord("S"));


// Determine Direction
var _dir = _keyRight - _keyLeft

if (state = 0) // Grounded movement
{
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
	
	// Gravity
	vsp = vsp + grv;
}

else if (state = 1) // Aerial Movement
{
	if (_keyRight) && (hsp < 8) hsp += 0.8;
	if (_keyLeft) && (hsp > -8) hsp -= 0.8;
	
	// Gravity
	vsp = vsp + grv;
}

else if (state = 2) // Stuck in Wall
{
	// Stick the player in place
	hsp = 0
	vsp = 0
	
	// Determine which direction to fling player and how hard
	if (_keyRight) && (charge < 30) { charge++; charging = 1; }
	if (_keyLeft) && (charge > -30) { charge--; charging = 1; }
	
	// Fling player
	if (mouse_check_button(mb_left)) && (charging = 1) { hsp = charge * 0.8; charge = 0; charging = 0; state = 1; }
}

else if (state = 3) // Stuck in Floor/Ceiling
{
	// Stick the player in place
	hsp = 0
	vsp = 0
	
	// Determine which direction to fling player and how hard
	if (_keyDuck) && (charge < 30) { charge++; charging = 1; }
	if (_keyJump) && (charge > -30) { charge--; charging = 1; }
	
	// Fling player
	if (mouse_check_button(mb_left)) && (charging = 1) { vsp = charge * 0.8; charge = 0; charging = 0; state = 1; }
}

else if (state = 4) // Damage State
{
	// Moving Right
	if (invuln = 120)
	{
		if (oPlayer.hsp > 0) 
		{ 
			hsp = -2;
			vsp = -6;
		}
	
		else
		{ 
			hsp = 2; 
			vsp = -6;
		}
		invuln--;
	}
	else if (invuln = 90)
	{
		state = 1;
	}
	// Gravity
	vsp = vsp + grv;
}

// Figure out if we can jump
if (canJump-- > 0) && (state < 2)
{
	state = 1
	if (_keyJump) { vsp = vspJump; canJump = 0; } //Jump
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
	if (vsp > 0) { canJump = 10; state = 0; }
	while (abs(vsp) > 0.1)
	{
		vsp *= 0.5;
		if (!place_meeting(x, y + vsp, oWall)) y += vsp;
	}
	vsp = 0;
}
y += vsp;

if (invuln < 120 and invuln >= 0) invuln--;	

else if (invuln = -1) invuln = 120;
