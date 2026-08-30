#math:plot/set
# math:plot/_new调用

execute store result score @s x run data get storage math:io input.center[0] 10000
execute store result score @s y run data get storage math:io input.center[1] 10000
execute store result score @s z run data get storage math:io input.center[2] 10000
execute store result score @s phi run data get storage math:io input.rot[0] 10000
execute store result score @s theta run data get storage math:io input.rot[1] 10000
execute store result score @s scale_u run data get storage math:io input.scale_coord[0] 10000
execute store result score @s scale_v run data get storage math:io input.scale_coord[1] 10000
execute store result score @s shift_u run data get storage math:io input.shift_coord[0] 10000
execute store result score @s shift_v run data get storage math:io input.shift_coord[1] 10000
data modify entity @s data.plot_coords set from storage math:io input.plot_coords
data modify entity @s data.render_command set from storage math:io input.render_command