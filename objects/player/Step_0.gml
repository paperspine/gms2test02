/// @description Update movement

key_left			= keyboard_check(ord("A"));
key_right			= keyboard_check(ord("D"));
key_jump			= keyboard_check_pressed(vk_space);
key_jump_hold		= keyboard_check(vk_space);

moveX = (key_right - key_left) * spd;

//gravity / jumping physics
if(!place_meeting(x,y+1,collider)) { moveY += grav_init; }
else{ if(key_jump) moveY = -jump_height; } //accomodate for hold down key for more height
moveY = clamp(moveY, -grav_max, grav_max);

//old broken jump code
//if(place_meeting(x,y+1,collider) && key_jump){ y -= jump_height; }

//horizontal collision
if(moveX != 0){
	if(place_meeting(x+moveX,y,collider)){
		repeat(abs(moveX)){
			if(!place_meeting(x+sign(moveX),y,collider)){
				x += sign(moveX);
			} else { break; }
		}
		moveX = 0;
	}
}

x += moveX;

//vertical collision

if(place_meeting(x,y+1,test_platform01)){
	moveY = 0;
}

if(moveY != 0){
	if(place_meeting(x,y+moveY,collider)){
		repeat(abs(moveY)){
			if(!place_meeting(x,y+sign(moveY),collider)){
				y += sign(moveY);
			} else { break; }
		}
		moveY = 0;
	}
}

y += moveY;