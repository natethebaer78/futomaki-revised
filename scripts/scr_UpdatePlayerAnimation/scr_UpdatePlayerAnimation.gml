switch (vertState)
{
	case verticalstate.onGround:
	{

		if (xSpeed == 0)
		{
			sprite_index = spr_PlayerIdle;
		}
		else
		{
			sprite_index = spr_PlayerRun;
			image_speed = (xSpeed / maxRunSpeed);
		}
		break;
		
	}
	case verticalstate.falling:
	{
		if (ySpeed > 1)
		{
		sprite_index = spr_PlayerInAir;
		image_index = 1;
		}
		image_speed = 0;
		break;
	}
	case verticalstate.jumping:
	{
		sprite_index = spr_PlayerInAir;
		image_index = 0;
		image_speed = 0;
		break;
	}
	//case verticalstate.jackPacking:
	//{
		//sprite_index = spr_PlayerInAir;
		//image_index = 0;
		//image_speed = 0;
		//break;
	//}
}