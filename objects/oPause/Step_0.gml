/// @description Insert description here
// You can write your code in this editor

if (pause)
{
	if (keyboard_check_pressed(vk_up))
	{
		pmenu_cursor--;
		if (pmenu_cursor < 0) pmenu_cursor = pmenu_items - 1;
		
	}
	if (keyboard_check_pressed(vk_down))
	{
		pmenu_cursor++;
		if (pmenu_cursor >= pmenu_items) pmenu_cursor = 0;
	}
	if (keyboard_check_pressed(vk_enter))
	{
		pmenu_committed = pmenu_cursor;
		pmenu_control = false;
	}
	
}
if (pmenu_committed != -1)
{
	switch(pmenu_committed)
	{
		case 0:
			break;
		case 1:
			if (!file_exists(SAVEFILE))
			{
				Slidetran(TRANS_MODE.NEXT);
			}
			else
			{	
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real(file);
				var global.charactor = file_text_read_real(file);
				file_text_close(file);
				Slidetran(TRANS_MODE.GOTO,target);
			}
			break;
		case 2:
			break;
		case 3:
			break;
		case 4:
			game_end();
			break;
		default:
			break;
	}

}