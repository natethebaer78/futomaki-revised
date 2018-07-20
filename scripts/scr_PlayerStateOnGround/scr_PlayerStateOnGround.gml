
if (!place_meeting(x, y + 1, obj_BlockParent))
{
	vertState = verticalstate.falling;
}

if (upKeyPressed)
{
	ySpeed = -jumpPower;
	vertState = verticalstate.jumping;
}