#math:visual_plane/set
# math:visual_plane/_new调用

execute store result score @s x run data get storage math:io input.center[0] 10000
execute store result score @s y run data get storage math:io input.center[1] 10000
execute store result score @s z run data get storage math:io input.center[2] 10000

execute store result score @s nvec_x run data get storage math:io input.norm_vec[0] 10000
execute store result score @s nvec_y run data get storage math:io input.norm_vec[1] 10000
execute store result score @s nvec_z run data get storage math:io input.norm_vec[2] 10000

execute store result score @s r run data get storage math:io input.rgba[0] 1
execute store result score @s g run data get storage math:io input.rgba[1] 1
execute store result score @s b run data get storage math:io input.rgba[2] 1
execute store result score @s a run data get storage math:io input.rgba[3] 1

execute store result score @s scale_u run data get storage math:io input.scale[0] 10000
execute store result score @s scale_v run data get storage math:io input.scale[1] 10000