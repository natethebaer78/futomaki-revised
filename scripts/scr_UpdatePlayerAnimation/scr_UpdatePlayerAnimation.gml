switch (vertState)
{
	case verticalstate.onGround:
	{
		
		if (xSpeed == 0)
		{
			show_debug_message("I'm IDOL");
			sprite_index = spr_PlayerIdle;
		}
		else
		{
			show_debug_message("I'm running");
			sprite_index = spr_PlayerRun;
			image_speed = (xSpeed / maxRunSpeed);
		}
		break;
	}
	case verticalstate.falling:
	{
		show_debug_message("I'm falling");
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
		show_debug_message("I'm jumping");
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