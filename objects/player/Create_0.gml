/// @description Initialize variables
spd = 2.5;
grav_init = 4;
grav_max = 9;
jump_height = 50;

if(!instance_exists(camera)){
	instance_create_layer(x,y,"Instances",camera);
}