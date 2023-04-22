if (self.ID == other.target_id) {
	self.score_1 -= other.score_1
	if self.score_1 < 0 {
		self.score_1 = -self.score_1
		self.owner_id = other.owner_id
		self.speed_score = 1
		instance_change(BaseGreen,0)
	}
	instance_destroy(other)
}