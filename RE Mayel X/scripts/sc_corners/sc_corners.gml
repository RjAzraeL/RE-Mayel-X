if !view_enabled {
	  _x0 = 0
	  _y0 = 0
	  _width = room_width
	  _height= room_height

} else {
	 _x0 = camera_get_view_x(view_camera[0]);
	 _y0 = camera_get_view_y(view_camera[0]);
	 _width = camera_get_view_width(view_camera[0])
	 _height= camera_get_view_height(view_camera[0])

}

 _x1 = _x0 + _width
 _y1 = _y0 + _height