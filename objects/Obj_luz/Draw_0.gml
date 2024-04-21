

if (surface_exists(luz)){
	
	
	surface_set_target(luz)
	
	if (global.hora <= 4 or global.hora >= 19){
		draw_set_alpha(0.9)
		draw_set_color(c_black)
		draw_rectangle(0,0,room_width,room_height,0)
	}
	
	if (global.hora == 5 or global.hora == 18){
		draw_set_alpha(hora)
		draw_set_color(c_black)
		draw_rectangle(0,0,room_width,room_height,0)
	}

	draw_set_alpha(1)
	draw_set_color(c_white)
	
	gpu_set_blendmode(bm_subtract)
	
	if(!global.car_coop){
		
	var _dir = point_direction(Obj_Coop.x, Obj_Coop.y, mouse_x, mouse_y);

	var _tam = 200;
	
	var _x_med = Obj_Coop.x + lengthdir_x(_tam / 2, _dir);
	var _y_med = Obj_Coop.y + lengthdir_y(_tam / 2, _dir);


		var _perp = _dir + 90;

		var _x1 = _x_med + lengthdir_x(_tam / 2, _perp);
		var _y1 = _y_med + lengthdir_y(_tam / 2, _perp);
		var _x2 = _x_med + lengthdir_x(_tam / 2, _perp + 180);
		var _y2 = _y_med + lengthdir_y(_tam / 2, _perp + 180);

		draw_triangle(Obj_Coop.x, Obj_Coop.y, _x1, _y1, _x2 , _y2, false);
	}else{
		
		var _dir = Obj_car_coop.image_angle;

		var _tam = 200;
	
		var _x_med = Obj_car_coop.x + lengthdir_x(_tam / 2, _dir);
		var _y_med = Obj_car_coop.y + lengthdir_y(_tam / 2, _dir);


			var _perp = _dir + 90;

			var _x1 = _x_med + lengthdir_x(_tam / 2, _perp);
			var _y1 = _y_med + lengthdir_y(_tam / 2, _perp);
			var _x2 = _x_med + lengthdir_x(_tam / 2, _perp + 180);
			var _y2 = _y_med + lengthdir_y(_tam / 2, _perp + 180);

			draw_triangle(Obj_car_coop.x, Obj_car_coop.y, _x1, _y1, _x2 , _y2, false);
	}
	
	// carros npcs
	var _dir = Obj_car_coop_NPC.image_angle;

	var _tam = 200;
	
	var _x_med = Obj_car_coop_NPC.x + lengthdir_x(_tam / 2, _dir);
	var _y_med = Obj_car_coop_NPC.y + lengthdir_y(_tam / 2, _dir);


	var _perp = _dir + 90;

	var _x1 = _x_med + lengthdir_x(_tam / 2, _perp);
	var _y1 = _y_med + lengthdir_y(_tam / 2, _perp);
	var _x2 = _x_med + lengthdir_x(_tam / 2, _perp + 180);
	var _y2 = _y_med + lengthdir_y(_tam / 2, _perp + 180);

	draw_triangle(Obj_car_coop_NPC.x, Obj_car_coop_NPC.y, _x1, _y1, _x2 , _y2, false);
	
	
	
	gpu_set_blendmode(bm_normal)
	surface_reset_target()
	
	draw_surface(luz,0,0)
}else{
	luz = surface_create(room_width,room_height)
}


