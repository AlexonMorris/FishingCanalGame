draw_text ( room_width-100, 0 ,"FPS:"+string(floor(fps_real)))

if !instance_exists(BaseRed) {
	global.state=state.window
	depth = -1
	draw_sprite(GreenWin, -1, room_width/2, room_height/2)
	selected_base.is_selected = false
}
if !instance_exists(BaseGreen) {
	global.state=state.window
	depth = -1
	draw_sprite(RedWin, -1, room_width/2, room_height/2)
	selected_base.is_selected = false
}
