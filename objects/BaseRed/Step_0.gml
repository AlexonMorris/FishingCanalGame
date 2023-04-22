score_1 += 1/room_speed

if score_1 >= 100 {
	score_1 = 100
}

if score_1 <= 0{
	score_1 = score_1 * -1
	instance_change(BaseGreen,0)
}