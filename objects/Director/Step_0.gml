/// @description Insert description here
// You can write your code in this editor
var gp_num = gamepad_get_device_count();
for (var i = 0; i < gp_num; i++;)
{
	global.gp[i] = gamepad_is_connected(i);
}