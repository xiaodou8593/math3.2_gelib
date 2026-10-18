#math:visual_plane/_model
# 使用临时对象构建数据模板
# 输出数据模板storage math:io result

data modify storage math:io result set value {center:[0.0d, 0.0d, 0.0d], norm_vec:[0.0d, 0.0d, 0.0d], rgba:[0.0d, 0.0d, 0.0d, 0.0d], scale:[0.0d, 0.0d]}

execute store result storage math:io result.center[0] double 0.0001 run scoreboard players get x int
execute store result storage math:io result.center[1] double 0.0001 run scoreboard players get y int
execute store result storage math:io result.center[2] double 0.0001 run scoreboard players get z int
execute store result storage math:io result.norm_vec[0] double 0.0001 run scoreboard players get nvec_x int
execute store result storage math:io result.norm_vec[1] double 0.0001 run scoreboard players get nvec_y int
execute store result storage math:io result.norm_vec[2] double 0.0001 run scoreboard players get nvec_z int
execute store result storage math:io result.rgba[0] double 1 run scoreboard players get r int
execute store result storage math:io result.rgba[1] double 1 run scoreboard players get g int
execute store result storage math:io result.rgba[2] double 1 run scoreboard players get b int
execute store result storage math:io result.rgba[3] double 1 run scoreboard players get a int
execute store result storage math:io result.scale[0] double 0.0001 run scoreboard players get scale_u int
execute store result storage math:io result.scale[1] double 0.0001 run scoreboard players get scale_v int