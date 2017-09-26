//Player Movement
speed = 4;

if (keyboard_check(ord("D")) && keyboard_check(ord("W"))){
	direction = 45;
}
else if (keyboard_check(ord("A")) && keyboard_check(ord("W"))){
	direction = 135;
}
else if (keyboard_check(ord("A")) && keyboard_check(ord("S"))){
	direction = 225;
}
else if (keyboard_check(ord("D")) && keyboard_check(ord("S"))){
	direction = 315;
}
else if (keyboard_check(ord("D"))){
	direction = 0;
}
else if (keyboard_check(ord("A"))){
	direction = 180;
}
else if (keyboard_check(ord("W"))){
	direction = 90;
}
else if (keyboard_check(ord("S"))){
	direction = 270;
}
else{
	speed = 0;
}

//Player angle
image_angle = point_direction(x,y,mouse_x,mouse_y);

//Shoot
if (mouse_check_button(mb_left)) && (cooldown < 1) {
	instance_create_layer(x,y,"BulletsLayer",bullet_object)
	cooldown = 5;
}

cooldown = cooldown -1;