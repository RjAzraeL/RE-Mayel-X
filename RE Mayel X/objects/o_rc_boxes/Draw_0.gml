/// @description 

for (var i = 0; i < 50; ++i) {
    //draws every object when it's time to appear
if box_start[i]>alarm[0] and box_finish[i]<alarm[1]{
	//if you write here choose(-10,10) instead of box_rot[i] the images start ringing like a bell
	draw_sprite_ext(rc_img,box_subimg[i],box_x[i],box_y[i],box_size[i],box_size[i],box_rot[i],c_white,1)

}
	
}
