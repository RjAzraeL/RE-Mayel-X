if (sprite_index == sprSaltando_inicio and fase_salto ==0)
{
	sprite_index = sprSaltando_medio;
	fase_salto = 1;
	image_speed = 1;
}
if (sprite_index == sprSaltando_final and fase_salto ==2)
{
	fase_salto = 0;
}