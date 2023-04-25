image_angle = 0

mp_potential_settings(45,5,5,false)
var soldier_path = path_add()
var is_path_finded = mp_potential_path_object(soldier_path, target_x, target_y, 3, 4, Mountain)

if is_path_finded
	path_start(soldier_path, in_forest = false ? speed_soldier : speed_soldier*0.5, 0, 0)
else if in_mountain
	move_towards_point(target_x, target_y, speed_soldier * 0.2)
else
	move_towards_point(target_x, target_y, in_forest = false ? speed_soldier : speed_soldier*0.5)

image_xscale = 1
if x > target_x {
	image_xscale = -1
}

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

in_forest = false
in_mountain = false