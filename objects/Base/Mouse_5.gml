if (global.state=state.play){
if (UnitManager.selected_base != pointer_null) and (UnitManager.selected_base.ID != ID) and (Player.my_id == owner_id) and (UnitManager.selected_base.score_1 >= 1) {
	selected_base = UnitManager.selected_base
	var unit = instance_create_depth(selected_base.x, selected_base.y, -1, Soldier)
	unit.owner_id = selected_base.owner_id
	unit.speed_soldier = 5 - (UnitManager.selected_base.score_1 / 25)
	unit.target_id = ID
	unit.target_x = x
	unit.target_y = y
	unit.score_1 = selected_base.score_1
	selected_base.score_1 = 0
}
}