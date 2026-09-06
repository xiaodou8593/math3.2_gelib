#math:r_cube/_model
# 使用临时对象构建数据模板
# 输出数据模板storage math:io result

data modify storage math:io result set value {a:0, r:0, center:[0.0d, 0.0d, 0.0d]}

execute store result storage math:io result.a double 0.0001 run scoreboard players get a int
execute store result storage math:io result.r double 0.0001 run scoreboard players get r int
execute store result storage math:io result.center[0] double 0.0001 run scoreboard players get x int
execute store result storage math:io result.center[1] double 0.0001 run scoreboard players get y int
execute store result storage math:io result.center[2] double 0.0001 run scoreboard players get z int