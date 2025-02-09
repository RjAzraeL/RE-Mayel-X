var_time_var+=0.04;

var_mouse_pos_x = mouse_x - camera_get_view_x(0);
var_mouse_pos_y = mouse_y - camera_get_view_y(0);

if shader_enabled shader_set(shd_LED);
    shader_set_uniform_f(uni_time, var_time_var);
    shader_set_uniform_f(uni_mouse_pos, var_mouse_pos_x, var_mouse_pos_y);
    shader_set_uniform_f(uni_resolution, var_resolution_x, var_resolution_y);
    shader_set_uniform_f(uni_led_size, var_led_size);
    shader_set_uniform_f(uni_led_brightness, var_led_brightness);
    if full_screen_effect draw_surface(surf,0,0);
shader_reset();

draw_set_color(c_black);
draw_text(0,2,string_hash_to_newline("Real FPS: "+string(fps_real)));
draw_text(0,14,string_hash_to_newline("LED size (Q & A to adjust): "+string(var_led_size)));
draw_text(0,26,string_hash_to_newline("LED Brightness (W & S to adjust): "+string(var_led_brightness)));

draw_text(0,62,string_hash_to_newline("Spacebar to toggle shader"));
draw_text(0,74,string_hash_to_newline("Shift key to toggle fullscreen or sprite only"));
draw_text(0,86,string_hash_to_newline("Escape key to exit"));


draw_set_color(c_white);
draw_text(0,0,string_hash_to_newline("Real FPS: "+string(fps_real)));
draw_text(0,12,string_hash_to_newline("LED size (Q & A to adjust): "+string(var_led_size)));
draw_text(0,24,string_hash_to_newline("LED Brightness (W & S to adjust): "+string(var_led_brightness)));

draw_text(0,60,string_hash_to_newline("Spacebar to toggle shader"));
draw_text(0,72,string_hash_to_newline("Shift key to toggle fullscreen or sprite only"));
draw_text(0,84,string_hash_to_newline("Escape key to exit"));

