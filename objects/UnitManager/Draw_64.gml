if (mouse_check_button(mb_left) and (startX != mouse_x or startY != mouse_y))
{
	draw_rectangle_color(startX, startY, mouse_x, mouse_y, c_green, c_green, c_green, c_green, 5)
}