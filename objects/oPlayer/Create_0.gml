// constant
	
	hascontrol = true;
	hS = 0;
	vS = 0;
	grv = 0.5;
	charactor = global.charactor
	flash = 0;
	hitfrom = 0;
// set sprite

if (global.charactor == 1)
{
	class = "Assassin";
	name = "";
	hp = 600;
	stam = 1000;
	mana = 400;
	walkS = 10;
	jumpSpeed = 5;
	
	splayer_S = sPlayer_Ass	;
	splayer_A = sPlayer_Ass_A;
	splayer_R = sPlayer_Ass_R;
	sprite_index = sPlayer_Ass;
}
if (global.charactor == 2)
{
	class = "Mage";
	name = "";
	hp = 650;
	stam = 600;
	mana = 1000;
	walkS = 7;
	jumpSpeed = 9;

	splayer_S = sPlayer_mag;
	splayer_A = sPlayer_mag_A;
	splayer_R = sPlayer_mag_R;
	sprite_index = sPlayer_mag;
}
if (global.charactor == 3)
{
	class = "Marksman";
	name = "";
	hp = 750;
	stam = 800;
	mana = 350;
	walkS = 8;
	jumpSpeed = 7;

	splayer_S = sPlayer_mar;
	splayer_A = sPlayer_mar_A;
	splayer_R = sPlayer_mar_R;
	sprite_index = sPlayer_mar;
}
if (global.charactor == 4)
{
	class = "Paladin";
	name = "";
	hp = 1000;
	stam = 750;
	mana = 500;
	walkS = 5;
	jumpSpeed = 11;

	splayer_S = sPlayer_pal;
	splayer_A = sPlayer_pal_A;
	splayer_R = sPlayer_pal_R;
	sprite_index = sPlayer_pal;
}
if (global.charactor == 5)
{
	class = "Fighter";
	name = "";
	hp = 800;
	stam = 700;
	mana = 450;
	walkS = 7;
	jumpSpeed = 9;

	splayer_S = sPlayer_fig;
	splayer_A = sPlayer_fig_A;
	splayer_R = sPlayer_fig_R;
	sprite_index = sPlayer_fig;
}
