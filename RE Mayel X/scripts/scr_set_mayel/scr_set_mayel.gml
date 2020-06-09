sprCaminando = global.mayel[argument0,4];
sprParado = global.mayel[argument0,3];
sprSaltando_inicio = global.mayel[argument0,5];
sprSaltando_medio = global.mayel[argument0,6];
sprSaltando_final = global.mayel[argument0,7];

if (argument0 != 3 and object_index == obj_mayel)
{
	obj_mayel.HerramientaMartillo = obj_herramienta_martillo;
	obj_mayel.sprite_martilloactual = spr_herramienta_martillo;
}
if (argument0 != 2 and object_index == obj_mayel)
{
	mask_index = spr_mascara32x64;
}