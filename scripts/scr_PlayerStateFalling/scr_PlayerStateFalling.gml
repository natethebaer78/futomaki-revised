//Transition to onGround state if floor is directly under us
if (on_floor(x, y + 1)) {
	vertState = verticalstate.onGround;
}

//Transition to jetpacking state if up key is being held
if (upKeyDown) {
	vertState = verticalstate.jetpacking;
}