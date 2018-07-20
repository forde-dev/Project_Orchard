/// @description Insert description here
// You can write your code in this editor

x = enemy_guy.x;
y = enemy_guy.y;

image_angle = 180;

firingdelay = firingdelay - 1
recoil = max(0,recoil - 1)

if (firingdelay < 0)
{
	recoil = 4;
	firingdelay = 5
	with (instance_create_layer(x,y, "projectiles", enemy_bullet))
	{
		speed = 25;
		direction = other.image_angle + random_range(-3, 3);
		image_angle = direction	
	}
}

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

if (image_angle > 90)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}