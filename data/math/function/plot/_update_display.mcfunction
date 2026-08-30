#math:plot/_update_display
# 更新展示设置
# 传入plot实例为执行者

tag @e[tag=result] remove result
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players get y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get z int
execute store result storage math:io rotation[0] float -0.0001 run scoreboard players get theta int
execute store result storage math:io rotation[1] float 0.0001 run scoreboard players get phi int
execute as 0-0-0-0-0 run function math:plot/summon_components

function marker_control:data/_get
data modify storage marker_control:io result.components set value []
execute as @e[tag=result] run data modify storage marker_control:io result.components append from entity @s UUID
function marker_control:data/_store