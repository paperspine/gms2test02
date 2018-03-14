/// @description ?

if(display){
	//position and velocity
	draw_set_color(c_white);
	draw_text(5,5,"X Vel: " + string(player.moveX));
	draw_text(5,20,"Y Vel: " + string(player.moveY));
	draw_text(5,35,"X Pos: " + string(player.x));
	draw_text(5,50,"Y Pos: " + string(player.y));
	
	draw_text(5,window_get_height() - 25,"Ver 0.0.9");
	
	//FPS
	draw_text(window_get_width() - 75,
		5, string(fps) + " FPS");
	
	//current resolution
	draw_text(
		window_get_width() - 100,
		window_get_height() - 25, 
		string(window_get_width()) + "x" + string(window_get_height())
	);
}