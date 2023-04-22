other.score_1 -= damage
if other.score_1 <= 0 {
	score_1 = 0
	instance_change(BaseGreen,0)
}
if position_meeting(x2,y2,BaseEmpty) {
	instance_destroy(self);

}

