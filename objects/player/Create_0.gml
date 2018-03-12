/// @description Initialize variables
spd = 3;
grav_init = 0.2;
grav_max = 8;
jump_height = 5;

moveX = 0;
moveY = 0;

if(!instance_exists(camera)){
	instance_create_layer(x,y,"Instances",camera);
}