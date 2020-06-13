if (global.pausa == 1)
{
	display_set_gui_maximize(1,1,0,0);
	draw_sprite_ext(pausa,0,0,152,1,1,0,c_white,1);
	draw_set_font(fnt_hud1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_color(c_white);
	draw_text(window_get_width()/2,window_get_height()/2,"PAUSA");	
	draw_set_color(c_white);
	draw_text(640,512,"PAUSA");
	draw_sprite_ext(spr_oscurecedor, 0 , 0 , 0 , room_width , room_height , 0 , c_white , 0.7);
}

draw_text(250,50,instance_number(all));
draw_text(250,100,fps);
