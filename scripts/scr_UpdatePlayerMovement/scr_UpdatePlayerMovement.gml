upKeyDown    = keyboard_check(jumpKey);
upKeyPressed = keyboard_check_pressed (jumpKey);
rightKeyDown = keyboard_check(rightKey);
leftKeyDown  = keyboard_check(leftKey);
swingKeyDown = keyboard_check(swingKey);

if(xSpeed > 0) {
	image_xscale = 1;
} else if(xSpeed < 0) {
	image_xscale = -1;
}

//-------------------------------------------------------------------------------
//Horizontal Input and Motion Handling with Collision Checks
if (rightKeyDown && !on_wall(x + 1, y))
{
	if (xSpeed < maxRunSpeed)
	xSpeed += accel;
}
else if (leftKeyDown && !on_wall(x - 1, y))
{
	if (xSpeed > -maxRunSpeed)
		xSpeed -= accel;
}

if (!rightKeyDown && !leftKeyDown)
{
	if (xSpeed != 0)
	xSpeed -= sign(xSpeed) * frict;
}


if (!on_wall(x + xSpeed, y)) {
	x += xSpeed;
} else {
	//while (!place_meeting(x + sign(xSpeed), y, obj_BlockParent))
	//{
		//x += sign(xSpeed);
	//}
	xSpeed = 0;
}


//State Machine for players vertical movements
switch (vertState) {
	case verticalstate.onGround:
		scr_PlayerStateOnGround();
		break;

	case verticalstate.jumping:
		scr_PlayerStateJumping();
		break;

	case verticalstate.jetpacking:
		scr_PlayerStateJetpacking();
		break;

	case verticalstate.falling:
		scr_PlayerStateFalling();
		break;
}

//-------------------------------------------------------------------------------
//Vertical Application and Collision Checks
if (vertState != verticalstate.onGround) {
	if (ySpeed < maxFallSpeed)
	  ySpeed += weight;
}


// if (!place_meeting(x, y + ySpeed, obj_BlockParent)) {
if(!on_floor(x, y+ySpeed)) {
	y += ySpeed;
} else {
	move_contact_solid(point_direction(x, y, x, y + ySpeed), maxFallSpeed);
	ySpeed = 0;
}









