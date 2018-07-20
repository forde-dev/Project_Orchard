/// @description Insert description here
// You can write your code in this editor
if (done == 0)
{
	vS = vS + grv;

	// stop at walls horizontally 
	if (place_meeting(x + hS, y, oWall))
	{

		while (!place_meeting(x + sign(hS), y, oWall))
		{
			x = x + sign(hS);  
		}
		hS = 0;
	}
	x = x + hS;

	// stop at valls vertically
	if (place_meeting(x, y+vS, oWall))
	{
		if (vS > 0)
		{
			done = 1;
			image_index = 1;
		}
		while (!place_meeting(x, y + sign(vS), oWall))
		{
			y = y + sign(vS);  
		}
		vS = 0;
	}
	y = y + vS;
}