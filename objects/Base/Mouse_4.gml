if UnitManager.selected_base == pointer_null and Player.my_id == owner_id  { 
	is_selected = true
	UnitManager.selected_base = self
} else if is_selected and (UnitManager.selected_base.ID != ID) {
	selected_base = UnitManager.selected_base
	var unit = instance_create_layer(selected_base.x, selected_base.y, "Instances", Soldier)
	unit.owner_id = selected_base.ID
	unit.target_id = ID
	unit.target_x = x
	unit.target_y = y
	unit.score_1 = selected_base.score_1
	selected_base.score_1 = 0
} else {
	is_selected = false
	UnitManager.selected_base = pointer_null
}
