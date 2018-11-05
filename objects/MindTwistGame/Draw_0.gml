/// @description Insert description here
// You can write your code in this editor


var leftSprites = global.gp[0] ? sXboxButtons:sComputerButtons;

//LEFT PLAYER
	var lx = leftPlayer.x;
	var ly = leftPlayer.y;
	
	draw_sprite_ext(sStickmanWhite,0,lx,ly,1,1,0,c_black,1);
	
	var BUTTON_DIS = 120;
	
	//button arrays x is i:0,y is i:1
	
	var button;
	
	button[0,0] = lx+lengthdir_x(BUTTON_DIS,135);
	button[0,1] = ly+lengthdir_y(BUTTON_DIS,135);
	
	button[1,0] = lx+lengthdir_x(BUTTON_DIS,90);
	button[1,1] = ly+lengthdir_y(BUTTON_DIS,90);
	
	button[2,0] = lx+lengthdir_x(BUTTON_DIS,45);
	button[2,1] = ly+lengthdir_y(BUTTON_DIS,45);
	
	var alpha=1;
	if(turn==1){
		alpha = 1;
	}
	else if(turn==2){
		alpha = .2;
	}
	draw_set_alpha(alpha);
	if(turn==1||turn==2){
		draw_sprite(leftSprites,1,button[0,0],button[0,1]);
		draw_sprite(leftSprites,2,button[1,0],button[1,1]);
		draw_sprite(leftSprites,3,button[2,0],button[2,1]);
	}
	draw_set_alpha(1)
	if(turn==3){
		draw_sprite(leftSprites,p1Number,button[p1Number-1,0],button[p1Number-1,1]);
	}
	
	var LABLE_DIS = -120;
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_font(fBasic);

	if(turn==1){
		draw_text(button[0,0],button[0,1]+LABLE_DIS,"1");
		draw_text(button[1,0],button[1,1]+LABLE_DIS,"2");
		draw_text(button[2,0],button[2,1]+LABLE_DIS,"3");
	}
	if(turn==3){
		draw_text(button[p1Number-1,0],button[p1Number-1,1]+LABLE_DIS,p1Number);
	}

var rightSprites = global.gp[1] ? sXboxButtons:sComputerButtons;

//RightPlayer
	var rx = rightPlayer.x;
	var ry = rightPlayer.y;
	draw_sprite_ext(sStickmanWhite,0,rx,ry,1,1,0,c_blue,1);
	
	
	//button arrays x is i:0,y is i:1
	var button;
	button[0,0] = rx+lengthdir_x(BUTTON_DIS,135);
	button[0,1] = ry+lengthdir_y(BUTTON_DIS,135);
	
	button[1,0] = rx+lengthdir_x(BUTTON_DIS,90);
	button[1,1] = ry+lengthdir_y(BUTTON_DIS,90);
	
	button[2,0] = rx+lengthdir_x(BUTTON_DIS,45);
	button[2,1] = ry+lengthdir_y(BUTTON_DIS,45);
	
	var alpha;
	if(turn==1){
		alpha = 0;
	}
	if(turn==2){
		alpha = 1;
	}
	if(turn==3){
		alpha = 1;
	}
	draw_set_alpha(alpha);
	if(turn==1||turn==2){
		draw_sprite(rightSprites,1,button[0,0],button[0,1]);
		draw_sprite(rightSprites,2,button[1,0],button[1,1]);
		draw_sprite(rightSprites,3,button[2,0],button[2,1]);
	}
	draw_set_alpha(1);
	if(turn==3){
		draw_sprite(rightSprites,p2Number,button[p2Number-1,0],button[p2Number-1,1]);
	}
	
	var LABLE_DIS = -120;
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_font(fBasic);
	
	if(turn==2){
		draw_text(button[0,0],button[0,1]+LABLE_DIS,"STOP 1");
		draw_text(button[1,0],button[1,1]+LABLE_DIS,"STOP 2");
		draw_text(button[2,0],button[2,1]+LABLE_DIS,"STOP 3");
	}
	if(turn==3){
		draw_text(button[p2Number-1,0],button[p2Number-1,1]+LABLE_DIS,"STOP " + string(p2Number));
	}

//SCORE
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_font(fCaps);
	
	draw_text(lx,ly-400,"Score: "+string(mtScore)); 
	draw_text(rx,ry-400,"Stops: "+string(mtStops)+"/3");
	
if(reveal){
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_font(fCaps);
	if(scored){
		draw_text(room_width/2,ly-400,"Scored "+string(p1Number));
	}
	else{
		draw_text(room_width/2,ly-400,"Stopped");
	}
}

if(gameOver){
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_font(fCaps);
	if(mtScore>=10){
		
	}
	else{
	}
}