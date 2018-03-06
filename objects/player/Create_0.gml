/// @description ?
spd = 3;
grav_init = 3;
grav_max = 9;
jump_height = 15;

if(!instance_exists(camera)){
	instance_create_layer(x,y,"Instances",camera);
}