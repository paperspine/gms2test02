/// @description Update movement

key_left			= keyboard_check(ord("A"));
key_right			= keyboard_check(ord("D"));
key_jump			= keyboard_check_pressed(vk_space);
key_jump_hold		= keyboard_check(vk_space);

moveX = (key_right - key_left) * spd;
//accomodate for gravity acceleration
if(!place_meeting(x,y+1,test_collision)) moveY += grav_init;
else{ if(key_jump) moveY = -jump_height; } //accomodate for hold down key for more height

//old broken jump code
//if(place_meeting(x,y+1,test_collision) && key_jump){ y -= jump_height; }

//horizontal collision
if(moveX != 0){
	if(place_meeting(x+moveX,y,test_collision)){
		repeat(abs(moveX)){
			if(!place_meeting(x+sign(moveX),y,test_collision)){
				x += sign(moveX);
			} else { break; }
		}
		moveX = 0;
	}
}

x += moveX;

//vertical collision
if(moveY != 0){
	if(place_meeting(x,y+moveY,test_collision)){
		repeat(abs(moveY)){
			if(!place_meeting(x,y+sign(moveY),test_collision)){
				y += sign(moveY);
			} else { break; }
		}
		moveY = 0;
	}
}

y += moveY;