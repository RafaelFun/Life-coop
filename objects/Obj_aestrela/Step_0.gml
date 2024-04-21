destino = irandom(10);
local = false;

switch(destino){
	case 1: local = Obj_Coop
}

var x1 =x;
var y1 = y;
var x2 = (local.x div 32) *35 +16;
var y2 = (local.y div 32) *35 +16;

if(mp_grid_path(Obj_mapa.grid, caminho, x1,y1,x2,y2, false)){
	path_start(caminho,spd,path_action_stop,false)
}



