/// @description ?

if(keyboard_check_pressed(vk_f2)){
	if(!display){ display = true; } 
	else{ display = false; }
}

if(keyboard_check_pressed(vk_f12)){
	room_restart();
}