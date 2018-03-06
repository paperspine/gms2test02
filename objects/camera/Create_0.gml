/// @description Initialize camera
cam_main = camera_create();

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(640,360,1,10000);

camera_set_view_mat(cam_main,vm);
camera_set_proj_mat(cam_main,pm);

view_camera[0] = cam_main;

follow = player; //object the camera locks on to
xTo = x;
yTo = y;
