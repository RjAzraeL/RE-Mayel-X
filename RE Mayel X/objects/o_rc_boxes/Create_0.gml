/// @desc Timer + Var Creation

//dont touch the sc_corners() script
sc_corners()

next_room= noone //next room to go
rc_img=noone //image on screen
rc_yspd=0 //Y_speed seconds
rc_xspd=0 //X_speed seconds

rc_img=s_boxes2 //image on screen

time_to_finish=1 //seconds up to change room (middle of animation)

//alarm 0 change rooms in the middle of the animation
//alarm 1 finish the animation and destroy the object.
alarm[0]=time_to_finish * game_get_speed(gamespeed_fps)
alarm[1]=2*time_to_finish * game_get_speed(gamespeed_fps)

//coord
x_slices=18  // XY grid to put items inside
y_slices=10  // XY grid to put items inside

//making 60 different sprites to put randomly on screen
for (var i = 0; i < 60; ++i) {
    box_x[i]= (_width/x_slices) * irandom(x_slices)
	box_y[i]= (_height/y_slices) * irandom(y_slices)
	box_subimg[i]= choose(0,1)
	box_size[i]= choose(0.9,1.1,1.1,1.3)
	box_start[i]=alarm[0]*(irandom(60)*0.01+0.40) //time to appear on screen
	box_finish[i]=alarm[1]*(irandom(50)*0.01+0.15) //time to disappear
	box_rot[i]=choose(-10,0,10)

}



