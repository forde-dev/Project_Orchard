/// @description Insert description here
// You can write your code in this editor
// vertical move
vS = vS + grv;

// stop at walls horizontally 
if (place_meeting(x + hS, y, oWall))
{

	while (!place_meeting(x + sign(hS), y, oWall))
	{
		x = x + sign(hS);  
	}
	hS = -hS;
}
x = x + hS;

//dont walk of edge
if (grounded) and (FearOfTheEdge) and (!place_meeting(x + hS, y + 1,oWall))
{
	hS = -hS
}


// stop at valls vertically
if (place_meeting(x, y+vS, oWall))
{
	while (!place_meeting(x, y + sign(vS), oWall))
	{
		y = y + sign(vS);  
	}
	vS = 0;
}
y = y + vS;

// chase and potrol

switch (state)
{
	case e_state.idle:
	{
		hS = 0;
		vS = (min(7,vS+0.05));
		if (distance_to_object(oPlayer) < 500) state = e_state.chase;
	}
	break;
	case e_state.chase:
	{
		dir = sign(oPlayer.x - x);
		hS = dir * 2;
		vS = (min(7,vS+0.05));
		if (distance_to_object(oPlayer) > 600) state = e_state.idle;
	}
}

// animation

if (!place_meeting(x, y+1, oWall)) 
{
	grounded = false;
	sprite_index = enemy_jump;
	image_speed = 0;
	if (sign(vS) > 0) image_index = 1; else image_index = 0;
}
else
{
	grounded = true;
	image_speed = 1;
	if (hS == 0)
	{
		sprite_index = enemy;	
	}
	else
	{
		sprite_index = enemy_run;
	}
if (hS != 0) image_xscale = sign(hS);	
}


if (hS != 0) image_xscale = sign(hS) * size;
image_yscale = size


