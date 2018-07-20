// user inputes
if (hascontrol)
{
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check(vk_space);
	key_sprint = keyboard_check_pressed(vk_lshift);
}
else
{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}
// move for each frame
var move = key_right - key_left;

// horizontal move
//Sprint
if (key_sprint) //and (place_meeting(x, y+1, oWall))
{
	hs = move * (walkS*2);
	//if (stam <= 0)
	//{
	//	hS = move * walkS;
	//}
	//else
	//{
	//	hs = move * (walkS*2);
	//}
}
else
{
	hS = move * walkS;
}


// vertical move
vS = vS + grv;

// jump with if to check for wall underneat
if (place_meeting(x,y+1, oWall)) and (key_jump)
{
	vS = -20 + jumpSpeed;
}

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
	while (!place_meeting(x, y + sign(vS), oWall))
	{
		y = y + sign(vS);  
	}
	vS = 0;
}
y = y + vS;


// animation

if (!place_meeting(x, y+1, oWall)) 
{
	
	sprite_index = splayer_A;
	image_speed = 0;
	if (sign(vS) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hS == 0)
	{
		sprite_index = splayer_S;	
	}
	else
	{
		sprite_index = splayer_R;
	}
}

if (hS != 0) image_xscale = sign(hS);
