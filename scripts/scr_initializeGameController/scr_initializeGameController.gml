// Input Controls - These will allow us to change different input controls later on

global.jumpKey = vk_up;
global.moveRightKey = vk_right;
global.moveLeftKey = vk_left;
global.swingSwordKey = vk_space;
global.menuKey = ord("M");

global.mainLayer  = "Instances";

enum verticalstate
{
	onGround,
	jumping,
	jetpacking,
	falling,
}

//create camera
instance_create_layer(0, 0, global.mainLayer, obj_camera);

