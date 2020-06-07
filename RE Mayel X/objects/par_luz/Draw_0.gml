//Dibujame la superficie

 if (!surface_exists( superf ))
 {
	superf = surface_create(room_width,room_height);
 }
 else 
 {
	if ( view_current == 0 )
	{
		draw_surface( superf , 0, 0 );
	}
 }