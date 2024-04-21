/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(global.car_coop){
	
	var _rspd = 1;
 
	Obj_Coop.x = x;
	Obj_Coop.y = y;
	Obj_Coop.image_alpha = 0;
 
 //		controle velocidade
		if(keyboard_check_pressed(ord("W")) and global._spd<10){
			global._spd+=1;
		}else if(keyboard_check_pressed(ord("S"))and global._spd>-10){
			global._spd-=1;
		}else if(keyboard_check_pressed(ord("P"))){
			global._spd=0
		}
		
		// DRIFT	
		if(keyboard_check(vk_shift) and global._spd>4){
			_rspd = 4
			global._spd-=0.20
		}else if(keyboard_check(vk_shift) and global._spd<-4){
			_rspd = 4
			global._spd +=0.02
		}
		
	//	show_debug_message(_spd)
		
		if (global._spd>0) {
			
	    // Calcula a nova posição com base no ângulo do objeto
	    var newX = x + global._spd * cos(degtorad(image_angle));
		
	    var newY = y - global._spd * sin(degtorad(image_angle));
	
    
	    // Define a nova posição
	    x = newX;
	    y = newY;
	}

	if (global._spd<0) {
		
	    // Calcula a nova posição com base no ângulo do objeto
	    var newX = x + global._spd * cos(degtorad(image_angle));
	    var newY = y - global._spd * sin(degtorad(image_angle));
    
	    // Define a nova posição
	    x = newX;
	    y = newY;
	}

	// Verifica se o objeto está se movendo antes de permitir ajustar o ângulo
	if (global._spd!=0) {
	   
	    if (keyboard_check(ord("D"))) {
	        image_angle -= _rspd;
	    }

	    if (keyboard_check(ord("A"))) {
	        image_angle += _rspd;
	    }
	}

	if (keyboard_check_pressed(ord("Z"))){
		instance_create_layer(x-5,y,"player",Obj_Coop);
		global.car_coop = false;
	}

}