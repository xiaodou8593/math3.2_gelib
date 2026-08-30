#math:plot/_model
# 使用临时对象构建数据模板
# 输出数据模板storage math:io result

data modify storage math:io result set value {center:[0.0d, 0.0d, 0.0d], rot:[0.0d, 0.0d], scale_coord:[0.0d, 0.0d], shift_coord:[0.0d, 0.0d], plot_coords:[], render_command:""}

execute store result storage math:io result.center[0] double 0.0001 run scoreboard players get x int
execute store result storage math:io result.center[1] double 0.0001 run scoreboard players get y int
execute store result storage math:io result.center[2] double 0.0001 run scoreboard players get z int
execute store result storage math:io result.rot[0] double 0.0001 run scoreboard players get phi int
execute store result storage math:io result.rot[1] double 0.0001 run scoreboard players get theta int
execute store result storage math:io result.scale_coord[0] double 0.0001 run scoreboard players get scale_u int
execute store result storage math:io result.scale_coord[1] double 0.0001 run scoreboard players get scale_v int
execute store result storage math:io result.shift_coord[0] double 0.0001 run scoreboard players get shift_u int
execute store result storage math:io result.shift_coord[1] double 0.0001 run scoreboard players get shift_v int
data modify storage math:io result.plot_coords set from storage math:io plot_coords
data modify storage math:io result.render_command set from storage math:io render_command