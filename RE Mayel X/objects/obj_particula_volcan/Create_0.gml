tasa = choose(-5,5);
direccionador = 0;
image_speed = 0;
image_index = choose(0,1,2,3);
wait = 0;
depth = random_range(-50,50);
vida = random_range(200,500);
path_start(pth_ceniza,random_range(1,4),0,false);
if (global.zona == 5)
{
	sprite_index = spr_particula_desierto;
}
if (global.zona == 6)
{
	sprite_index = spr_particula_burbuja;
	path_start(pth_burbuja,random_range(1,3),0,false);
}