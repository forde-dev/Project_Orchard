/// @description this is frow pasuing the games
pause = 0;

pmenu_speed = 25;
pmenu_font = fMenu;
pmenu_itemheight = font_get_size(fMenu);
pmenu_committed = -1;

pmenu[0] = "Continue";
pmenu[1] = "Restart Level";
pmenu[2] = "Save";
pmenu[3] = "Options";
pmenu[4] = "Quit Game";

pmenu_items = array_length_1d(pmenu);
pmenu_cursor = 0;
