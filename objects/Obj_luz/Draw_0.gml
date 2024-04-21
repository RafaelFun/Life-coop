if (surface_exists(luz) and global.hora <=5 and global.hora>=18){
	

	surface_set_target(luz)
	
	draw_set_alpha(0.9)
	draw_set_color(c_black)
	draw_rectangle(0,0,room_width,room_height,0)
	
	
	
	draw_set_alpha(1)
	draw_set_color(c_white)
	
	gpu_set_blendmode(bm_subtract)
	
	draw_circle(Obj_Coop.x,Obj_Coop.y,100,0)
	
	gpu_set_blendmode(bm_normal)
	surface_reset_target()
	
	
}else{
	luz = surface_create(room_width,room_height)
}

