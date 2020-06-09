scr_sonido(snd_martillo_roto);

roto1 = instance_create_depth(x,y,-10,obj_martillo_roto);
roto1 . roto = 0;
roto1 . hspeed = 2;
roto1 . image_angle = image_angle;
roto1 . sprite_index = sprite_index;

roto2 = instance_create_depth(x,y,-10,obj_martillo_roto);
roto2 . roto = 1;
roto2 . hspeed = -2;
roto2 . image_angle = image_angle;
roto2 . sprite_index = sprite_index;