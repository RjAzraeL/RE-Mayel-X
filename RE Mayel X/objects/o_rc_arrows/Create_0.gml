/// @desc Timer + Var Creation

//dont touch the sc_corners() script
sc_corners()

next_room= noone //next room to go
rc_img=noone //image on screen
rc_yspd=0 //Y_speed seconds
rc_xspd=0 //X_speed seconds

rc_img=s_arrows //image on screen
x = _x0		//X position
y= _y1/2	//Y position

time_to_finish=0.8 //seconds up to change room (middle of animation)

//alarm 0 change rooms in the middle of the animation
//alarm 1 finish the animation and destroy the object.
alarm[0]=time_to_finish * game_get_speed(gamespeed_fps)
alarm[1]=2*time_to_finish * game_get_speed(gamespeed_fps)


//the arrows move at the same speed of the object
rc_yspd= _width/(time_to_finish* game_get_speed(gamespeed_fps))
hspeed = rc_yspd

//coord
x_slices=18  //XY grid to draw the arrows
y_slices=10  //XY grid to draw the arrows

//it creates 51 arrows that move forward
for (var i = 0; i < 51; ++i) {
    arrow_x[i]= (_width/x_slices) * irandom(x_slices) - _width //arrows created outside of the screen
	arrow_y[i]= (_height/y_slices) * irandom(y_slices)
	arrow_subimg[i]= irandom(sprite_get_number(rc_img)-1)
	arrow_size[i]= choose(0.9,1,1,1.1)
//	box_start[i]=alarm[0]*(irandom(60)*0.01+0.40) //time to appear on screen
//	box_finish[i]=alarm[1]*(irandom(50)*0.01+0.15) //time to disappear
}



