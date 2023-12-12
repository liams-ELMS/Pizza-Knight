/// @description Control Menu

//Item ease in
menu_x += (menu_x_target - menu_x) / menu_speed;

//Keyboard Controls
if (menu_control)
{
	if (keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))) 
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	else if (keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"))) 
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items - 1;
	}
	
	if (keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_width + 200;
		menu_committed = menu_cursor;
		menu_control = false;
	}
}

if (menu_x > gui_width + 150) and (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 1: default: room_goto_next(); break;
		case 0: game_end(); break;
	}
}
