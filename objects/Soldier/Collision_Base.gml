if (other.owner_id == self.target_id) {
	instance_destroy(self)
	other.score_1 -= self.score_1
	if other.score_1 < 0 {
		// todo Захватил вражескую базу
	}
}