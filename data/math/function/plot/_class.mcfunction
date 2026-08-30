#math:plot/_class
# 生成预设静态数据模板

function math:plot/_zero
execute positioned 0.0 0.0 0.0 rotated 0.0 0.0 as 0-0-0-0-0 run function math:plot/_anchor_to
scoreboard players set scale_u int 10000
scoreboard players set scale_v int 10000
function math:plot/_model
data modify storage math:class plot_plate set from storage math:io result