/// @description Insert description here
// You can write your code in this editor

var p0 = instance_find(PlayerSpot,0);
var p1 = instance_find(PlayerSpot,1);
leftPlayer  = p0.x < p1.x ? p0: p1 ;
rightPlayer = p0.x > p1.x ? p0: p1 ; 

alarm0ON = false;
alarm1ON = false;
added = false;

scored = false;
reveal = false;


mtScore = 0;
mtStops = 0;

p1Number = 0;
p2Number = 0;

turn = 1;

gameOver = false;