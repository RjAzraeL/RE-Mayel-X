if (dataload == 1)
{
	draw_self();
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(fnt_mapa);
	draw_set_color(c_black);
	draw_text(x+1,y-23,global.nivel[ide,0]);
	draw_set_color(color)
	draw_text(x,y-24,global.nivel[ide,0]);
}