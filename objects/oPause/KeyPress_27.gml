/// @description Pauses on esc

if (!pause)
{
	pause = 1;
	instance_deactivate_all(true);
	// activate anything for the pause down here
	
	
}
else
{
	pause = 0;
	instance_activate_all();
}