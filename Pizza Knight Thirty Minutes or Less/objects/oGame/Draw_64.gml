// Timer
if (global.timerstart)
{
	// Shrink text back to normal scale
	timertextscale = max(timertextscale * 0.95, 1);
	
	// Draw the timer's shadow
	DrawSetText(c_black, fMenu, fa_right, fa_top);
	draw_text_transformed(RES_W-8,12, displayTimer, timertextscale, timertextscale, 0);
	
	// Draw the timer
	draw_set_color(c_white);
	draw_text_transformed(RES_W-10,10, displayTimer, timertextscale, timertextscale, 0);
}

// Dead Timer
else if (global.timerstart = false) and (instance_exists(oPlayer)) and (oPlayer.curHealth <= 0) and (room != rMenu)
{
	// Draw the timer's shadow
	DrawSetText(c_black, fMenu, fa_center, fa_middle);
	draw_text_transformed(675,384, displayTimer, 2, 2, 0);
	
	// Draw the timer
	draw_set_color(c_white);
	draw_text_transformed(673,382, displayTimer, 2, 2, 0);
}


// Health
if (room != rMenu) and (instance_exists(oPlayer)) and (oPlayer.curHealth > 0)
{
	// Draw the hp's shadow
	DrawSetText(c_black, fMenu, fa_left, fa_top);
	draw_text_transformed(8,12, "HP: " + string(oPlayer.curHealth) + "/" + string(oPlayer.maxHealth), 1, 1, 0);
	
	// Draw the hp
	draw_set_color(c_white);
	draw_text_transformed(10,10, "HP: " + string(oPlayer.curHealth) + "/" + string(oPlayer.maxHealth), 1, 1, 0);
}

