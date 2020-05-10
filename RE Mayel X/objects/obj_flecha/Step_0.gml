//image_angle += 4;
gravity = global.gravedad;
image_angle = direction;

if (carga > 2)
{
	carga = 0;
	image_blend = choose(c_red,c_black,c_green,c_orange,c_purple,c_fuchsia,c_white,c_yellow,c_lime,c_olive);
}
else 
{
	carga++;
}