// Variables
grv = 0.5;		// Strength of Gravity
hsp = 0;		// Current Horizontal Speed
vsp = 0;		// Current Vertical Speed
hspWalk = 8;	// Base Walk Speed
vspJump = -12;	// Base Jump Height
canJump = 0;	// Jumping Buffer
state = 0;		// 0 = Grounded, 1 = Aerial, 2 = Planted in Floor, 3 = Planted in Wall, 4 = Damaged
charge = 0;		// How quickly the player moves after planted
charging = 0;	// Know when to release charge
maxHealth = 8;	// Maximum health
curHealth = 8;	// Current health
invuln = 120;	// How long the player cannot be hit after taking damage