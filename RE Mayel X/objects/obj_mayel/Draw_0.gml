draw_self();
if (tiene_llave != 0)
{
	for (var z = 0; z < tiene_llave ; z++)
	{
		draw_sprite_ext(spr_llave,0,x,y-64-(48*z),1,1,angulo_llave,c_white,1);
	}
}
if (martillo_cooldown < martillo_tope and boomerang_cooldown >= boomerang_tope)
{
	draw_sprite_ext(sprite_martilloactual,0,x,y+64,image_xscale,image_yscale,angulo_llave,c_white,0.5);
}
if (martillo_cooldown >= martillo_tope and boomerang_cooldown < boomerang_tope)
{
	draw_sprite_ext(spr_herramienta_boomerang,0,x,y+64,image_xscale,image_yscale,angulo_llave,c_white,0.5);
}
if (martillo_cooldown < martillo_tope and boomerang_cooldown < boomerang_tope)
{
	draw_sprite_ext(spr_herramienta_boomerang,0,x-24,y+64,image_xscale,image_yscale,angulo_llave,c_white,0.5);
	draw_sprite_ext(sprite_martilloactual,0,x+24,y+64,image_xscale,image_yscale,angulo_llave,c_white,0.5);
}