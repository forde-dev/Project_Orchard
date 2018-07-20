/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{
	with (instance_create_layer(x,y,layer,enemy_dead))
	{
		direction = other.hitfrom
		hS = lengthdir_x(3, direction);
		vS = lengthdir_y(3, direction)-2;
		if (sign(hS) != 0) image_xscale = sign(hS) * other.size;
		image_yscale = other.size

	}
	
	instance_destroy();
}