#math:plot/_summon_here
# 快捷生成绘图器
# 输入执行坐标
# 输入执行朝向

data modify storage math:io input set from storage math:class plot_plate
function math:plot/_proj
execute as 0-0-0-0-0 run function math:plot/_anchor_to
function math:plot/_model
data modify storage math:io input set from storage math:io result
function math:plot/_new