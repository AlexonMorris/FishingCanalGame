if UnitManager.selected_base == pointer_null and Player.my_id == owner_id {
	is_selected = true
	UnitManager.selected_base = self
}
else if UnitManager.selected_base != pointer_null and Player.my_id == owner_id {
	if UnitManager.selected_base == self {
		is_selected = false
		UnitManager.selected_base = pointer_null
	} else {
		UnitManager.selected_base.is_selected = false
		is_selected = true
		UnitManager.selected_base = self
	}
} else if (UnitManager.selected_base != pointer_null) and (UnitManager.selected_base.ID != ID) and (Player.my_id != owner_id) and (UnitManager.selected_base.score_1 >= 1) {
	selected_base = UnitManager.selected_base
	var unit = instance_create_layer(selected_base.x, selected_base.y, "Instances", Soldier)
	unit.owner_id = selected_base.owner_id
	unit.speed_soldier = 5 - floor(UnitManager.selected_base.score_1 / 25)
	unit.target_id = ID
	unit.target_x = x
	unit.target_y = y
	unit.score_1 = selected_base.score_1
	selected_base.score_1 = 0
} /*else {
	UnitManager.selected_base.is_selected = false
	UnitManager.selected_base = pointer_null
}*/
