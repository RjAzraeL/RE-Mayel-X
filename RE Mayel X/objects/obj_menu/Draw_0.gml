draw_set_font(fnt_titulo);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
if (ver == true)
{
	draw_set_color(c_black);
	draw_text(room_width/2+1,431,"Presione ENTER/START para continuar");
	draw_set_color(c_white);
	draw_text(room_width/2,430,"Presione ENTER/START para continuar");
}