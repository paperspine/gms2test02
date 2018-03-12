/// @description ?

if(display){
	draw_set_color(c_white);
	draw_text(5,5,"X Vel: " + string(player.moveX));
	draw_text(5,20,"Y Vel: " + string(player.moveY));
	draw_text(5,35,"X Pos: " + string(player.x));
	draw_text(5,50,"Y Pos: " + string(player.y));
	
	draw_text(1200,5, string(fps) + " FPS");
}