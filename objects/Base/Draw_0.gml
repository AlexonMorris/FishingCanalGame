draw_self()
draw_text ( x-10, y+30 , string(floor(score_1)))

if hl == 1 {
	draw_sprite(Sprite4,0, x, y)
}

my_mouse_x = window_mouse_get_x()
my_mouse_y = window_mouse_get_y()

if mouse_check_button_pressed(mb_left) and hl == 1 {
	if position_meeting(my_mouse_x,my_mouse_y,Base) and !position_meeting(my_mouse_x,my_mouse_y,self) {

		instance_create_layer(self.x,self.y,"Instances",Soldier,
		{
			x2:my_mouse_x,
			y2:my_mouse_y,
			base_from:self
		})

	}
}
