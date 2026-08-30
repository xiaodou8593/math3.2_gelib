#math:plot/_new
# 使用数据模板生成实体对象
# 输入数据模板storage math:io input
# 输出 @e[tag=result,limit=1]

tag @e[tag=result] remove result
summon marker 0 0 0 {Tags:["math_plot", "result"],CustomName:"math_plot"}
execute as @e[tag=result,limit=1] run function math:plot/set
execute as @e[tag=result,limit=1] run function math:plot/set_operation