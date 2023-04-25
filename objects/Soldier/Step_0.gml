image_angle = 0

soldier_path = path_add()
x2 = target_x div 32 * 32 + 16
y2 = target_y div 32 * 32 + 16
mp_grid_path(global.grid,soldier_path,x,y,x2,y2,1)
path_start(soldier_path,in_forest = false ? speed_soldier : speed_soldier*0.5, 0,0)



image_xscale = 1
if x < prev_x { 
	image_xscale = -1
}

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

in_forest = false
in_mountain = false

prev_x = x