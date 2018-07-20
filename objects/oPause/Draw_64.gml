/// @description Insert description here
// You can write your code in this editor
var xx = view_wport[0]/2;
var yy = view_hport[0]/2
if (pause)
{
	draw_set_color(c_black);
	draw_set_alpha(0.60);
	draw_rectangle(view_xport[0],view_yport[0],view_wport[0],view_hport[0],0);
	draw_set_font(fMenu);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text(xx,yy-64,"Paused");
	
	for (var i = 0; i < pmenu_items; i++)
	{
		draw_set_color(c_gray);
		if (i == pmenu_cursor)
		{
			draw_set_color(c_white);
		}
		draw_text(xx,yy + (i*32),pmenu[i]);
	}
	draw_set_color(c_white);
	draw_set_halign(fa_left);
}