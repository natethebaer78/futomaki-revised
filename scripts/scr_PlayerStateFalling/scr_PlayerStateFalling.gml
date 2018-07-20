//Transition to onGround state if floor is directly under us
if (place_meeting(x, y + 1, obj_BlockParent))
{
	vertState = verticalstate.onGround;
}

//Transition to jetpacking state if up key is being held
if (upKeyDown)
{
	vertState = verticalstate.jetpacking;
}