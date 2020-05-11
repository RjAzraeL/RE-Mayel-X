/*

camera_get_view_x(view_camera[0]);
camera_get_view_y(view_camera[0]);

*/
if (room != rm_mapa and room != rm_pantalla_titulo and room != rm_presentacion)
{
	draw_sprite_ext(spr_mayel_icono,0,camera_get_view_x(view_camera[0])+48,camera_get_view_y(view_camera[0])+62,1,1,0,c_white,1);
	draw_sprite_ext(spr_mayel_moneda,0,camera_get_view_x(view_camera[0])+26,camera_get_view_y(view_camera[0])+170,1,1,0,c_white,1);
	draw_set_font(fnt_hud2);
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);
	draw_set_color(c_black);
	draw_text(camera_get_view_x(view_camera[0])+74,camera_get_view_y(view_camera[0])+172,global.moneda);
	//draw_set_color(c_white);
	//draw_text(camera_get_view_x(view_camera[0])+72,camera_get_view_y(view_camera[0])+170,global.moneda);

	draw_set_font(fnt_hud1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);
	draw_set_color(c_white);
	draw_text(camera_get_view_x(view_camera[0])+74,camera_get_view_y(view_camera[0])+177,global.moneda);
	//draw_set_color(c_black);
	//draw_text(camera_get_view_x(view_camera[0])+72,camera_get_view_y(view_camera[0])+170,global.moneda);



	for (var i = 0; i < 3 ; i++)
	{
		draw_sprite_ext(spr_mayel_gema_fondo,0,camera_get_view_x(view_camera[0])+(480-56)+(i*56),camera_get_view_y(view_camera[0])+516,1,1,0,c_white,1);
		if (global.gema_local >= i+1)
		{
			draw_sprite_ext(spr_mayel_gema,0,camera_get_view_x(view_camera[0])+(480-56)+(i*56),camera_get_view_y(view_camera[0])+516,1,1,0,c_white,1);
		}
	}
}

if (global.pausa == 1)
{
	draw_set_font(fnt_hud1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_color(c_white);
	draw_text(camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+270,"PAUSA");	
	draw_set_color(c_white);
	draw_text(camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+270,"PAUSA");	
}