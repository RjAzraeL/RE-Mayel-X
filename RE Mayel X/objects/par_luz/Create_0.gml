/// Superficie
illu = global.zonas[ global.zona-1 ,3];
superf = surface_create( room_width , room_height);

surface_set_target( superf );
draw_clear_alpha( c_black , 0 );

// Reseteo

surface_reset_target();


#region Variables imagenes
image_iluminacion = 0;

#endregion