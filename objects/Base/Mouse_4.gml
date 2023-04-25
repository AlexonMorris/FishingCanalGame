if (global.state=state.play){
	if UnitManager.selected_base == pointer_null and Player.my_id == owner_id{
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
	var unit = instance_create_depth(selected_base.x, selected_base.y, -1, Soldier)
	unit.owner_id = selected_base.owner_id
	unit.speed_soldier = 5 - floor(UnitManager.selected_base.score_1 / 25)
	unit.target_id = ID
	unit.target_x = x
	unit.target_y = y
	unit.score_1 = selected_base.score_1
	selected_base.score_1 = 0
}
}


	//var buff = buffer_create(32,buffer_grow,1)
	//buffer_seek(buff,buffer_seek_start,0)
	//buffer_write(buff,buffer_s16,owner_id)
	//buffer_write(buff,buffer_s16,unit.speed_soldier)
	//buffer_write(buff,buffer_u16,ID)
	//buffer_write(buff,buffer_s16,x)
	//buffer_write(buff,buffer_s16,y)
	//buffer_write(buff,buffer_s16,score_1)
	//network_send_packet(o_client.client,buff,buffer_tell(buff))
	//buffer_delete(buff)
	
 /*else {
	UnitManager.selected_base.is_selected = false
	UnitManager.selected_base = pointer_null
}*/
