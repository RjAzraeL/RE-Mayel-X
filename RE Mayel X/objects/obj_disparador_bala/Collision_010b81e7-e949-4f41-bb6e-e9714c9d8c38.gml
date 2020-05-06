if (chocar == 1)
{
	instance_destroy();
}
if (diagonal == 1)
{
	var bala = instance_create_depth(x,y-8,-5,obj_disparador_bala);
	bala . hspeed = 5;
	bala . vspeed = -5;
	bala . chocar = 1;
	bala = instance_create_depth(x,y-8,-5,obj_disparador_bala);
	bala . hspeed = -5;
	bala . vspeed = -5;
	bala . chocar = 1;
	instance_destroy();
}