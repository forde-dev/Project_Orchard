/// @description Move to next level
with (oPlayer)
{
	if (hascontrol)
	{
		hascontrol = false;
		Slidetran(TRANS_MODE.GOTO,other.target);
		
	}
}
