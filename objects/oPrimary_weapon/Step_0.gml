/// @description attack and stamina
click_pAttack = mouse_check_button(mb_left)
click_pAttack_released = mouse_check_button_released(mb_left)
sprite_index = sPrimary_weapon;

if (click_pAttack == 1) && (oPlayer.stam >= 0)
{
	image_speed = 1;
	oPlayer.stam = oPlayer.stam - 40;
}
else 
{
	image_speed = 0;
	oPlayer.stam = oPlayer.stam +  5;
}
if (click_pAttack_released)
{
	image_index = 0;
}




