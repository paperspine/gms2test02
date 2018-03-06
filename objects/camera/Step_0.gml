/// @description Update camera

var dragspeed = 10;

x += (xTo - x)/dragspeed;
y += (yTo - y)/dragspeed;

if(follow != noone){
	xTo = follow.x;
	yTo = follow.y;
}

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(cam_main,vm);