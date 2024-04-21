/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

miniseg +=room_speed;

if( miniseg >= 60){
	seg++;
	miniseg -= 60;
}
if( seg >= 60){
	global.mini++;
	seg -= 60;
}
if (global.mini >= 60) {
        global.hora++;
        global.mini -= 60;
}
if (global.hora >= 24) { 
        global.hora = 0; 
}


