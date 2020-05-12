/// @description
//the screen will be filled like a pie
//draw_pie(x ,y ,value, max, colour, radius, transparency)
//source: https://forum.yoyogames.com/index.php?threads/is-there-a-way-to-draw-a-partial-circle-like-a-pie-slice.39662/

//it fills until the screen is full, then it goes empty again
if alarm[0]>0{
	rc_health=min(100-(alarm[0]/rc_maxfps)*100 ,100)
}
else {
	rc_health=min((alarm[1]/rc_maxfps)*100 ,100)

}

if (rc_health > 0) { 
    var i, len, tx, ty, val;
    
    var numberofsections = 60 // there is no draw_get_circle_precision() else I would use that here
    var sizeofsection = 100/numberofsections
    
    val = (rc_health/rc_maxhealth) * numberofsections
    
    if (val > 1) { // HTML5 version doesnt like triangle with only 2 sides
    
        draw_set_colour(color[1]);
        draw_set_alpha(rc_alpha);
        
        draw_primitive_begin(pr_trianglefan);
        draw_vertex(x, y);
        
        for(i=0; i<=val; i++) {
            len = (i*sizeofsection)+0; // number is the starting angle, can be 90, 180,....
            tx = rc_dir*lengthdir_x(rc_rad, len); 
            ty = rc_dir*lengthdir_y(rc_rad, len);
            draw_vertex(x+tx, y+ty);
        }
        draw_primitive_end();
        
    }
    draw_set_alpha(1);
}

