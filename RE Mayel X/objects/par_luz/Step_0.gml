if ( surface_exists( superf ) )
{
	surface_set_target( superf );
	//Negro
	draw_set_color(c_black);
	draw_set_alpha(illu);
	draw_rectangle( 0 , 0 , room_width , room_height , false );
	
	//Poneme circulos
	gpu_set_blendmode(bm_subtract);
	draw_set_color(c_white);
	
	//Dibujame circulos
	
	with (obj_mayel)
	{
		//draw_circle(x + random_range( -1 , 1 ) , y + random_range(-1 , 1 ) , 72 + random_range( -1 , 1 ) , false);
		draw_sprite(spr_iluminacion,other.image_iluminacion,x+random_range( -1 , 1 ) , y + random_range( -1 , 1 ));
	}
	with (par_enemigo)
	{
		draw_circle(x + random_range( -1 , 1 ) , y + random_range(-1 , 1 ) , sprite_height + sprite_width + random_range( -1 , 1 ) , false);
	}
	with (obj_moneda)
	{
		draw_circle(x + random_range( -1 , 1 ) , y + random_range(-1 , 1 ) , 24 + random_range( -1 , 1 ) , false);
	}
	with (obj_caramelo)
	{
		draw_circle(x + random_range( -1 , 1 ) , y + random_range(-1 , 1 ) , 24 + random_range( -1 , 1 ) , false);
	}
	with (obj_gema)
	{
		draw_circle(x + random_range( -1 , 1 ) , y + random_range(-1 , 1 ) , 24 + random_range( -1 , 1 ) , false);
	}
	with (obj_llave)
	{
		draw_circle(x + random_range( -1 , 1 ) , y + random_range(-1 , 1 ) , 24 + random_range( -1 , 1 ) , false);
	}
	
	//Ahora reseteame
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	surface_reset_target();
}
else 
{
	superf = surface_create( room_width , room_height );
	surface_set_target( superf );
	draw_clear_alpha(c_black , 0);
	surface_reset_target();
}

#region Variable imagenes
image_iluminacion++;
if (image_iluminacion > 31)
{
	image_iluminacion = 0;
}
#endregion