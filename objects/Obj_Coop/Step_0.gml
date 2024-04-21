/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

global.key_up = keyboard_check(ord("W"));
global.key_down = keyboard_check(ord("S"));
global.key_left = keyboard_check(ord("A"));
global.key_right = keyboard_check(ord("D"));

if(global.key_up){
	y-= spd;
}
else if (global.key_down){
	y+= spd;
}
if(global.key_left){
	x-=spd;
}
else if(global.key_right){
	x+=spd;
}
if(keyboard_check(vk_shift)){
	spd = 2;
}else{
	spd = 1;
}