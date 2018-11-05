/// @description Insert description here
// You can write your code in this editor
vkP1One   = keyboard_check_pressed(ord("1")) or keyboard_check_pressed(vk_numpad1) or gamepad_button_check_pressed(0,gp_face3);
vkP1Two   = keyboard_check_pressed(ord("2")) or keyboard_check_pressed(vk_numpad2) or gamepad_button_check_pressed(0,gp_face4);
vkP1Three = keyboard_check_pressed(ord("3")) or keyboard_check_pressed(vk_numpad3) or gamepad_button_check_pressed(0,gp_face2);

vkP2One   = keyboard_check_pressed(ord("1")) or keyboard_check_pressed(vk_numpad1) or gamepad_button_check_pressed(1,gp_face3);
vkP2Two   = keyboard_check_pressed(ord("2")) or keyboard_check_pressed(vk_numpad2) or gamepad_button_check_pressed(1,gp_face4);
vkP2Three = keyboard_check_pressed(ord("3")) or keyboard_check_pressed(vk_numpad3) or gamepad_button_check_pressed(1,gp_face2);

vk7test = keyboard_check_pressed(ord("7")) or vk7test;
vk8test = keyboard_check_pressed(ord("8")) or vk8test;

if(turn==1){
	//Check IF OVER
	if(mtScore>=10 or mtStops >=3){
		gameOver = true;
	}
	//Left Playe
	if(vkP1One){
			p1Number=1;
		}
		else if(vkP1Two){
			p1Number=2;
		}
		else if(vkP1Three){
			p1Number=3;
		}
	}
	
	if(p1Number>0){
		turn++;
	}
}
else if(turn==2){
	//Right Player
	if(vk7test){
		p2Number = irandom_range(1,3);
	}
	else{
		if(vkP2One){
			p2Number=1;
		}
		else if(vkP2Two){
			p2Number=2;
		}
		else if(vkP2Three){
			p2Number=3;
		}
	}
	
	if(p2Number>0){
		turn++;
	}
}
else if(turn==3){
	//Reveal
	scored = p1Number!=p2Number;
	if(!alarm0ON){
		alarm0ON = true;
		alarm[0]=1*room_speed;
	}
}

if(reveal and !added){
	added = true;
	if(scored){
		mtScore+=p1Number;
	}
	else{
		mtStops++;
	}
}