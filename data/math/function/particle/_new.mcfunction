#math:particle/_new
# 使用数据模板生成实体对象
# 输入数据模板storage math:io input
# 输入执行位置
# 输出 @e[tag=result,limit=1]

tag @e[tag=result] remove result
summon marker ~ ~ ~ {Tags:["math_particle", "result"],CustomName:"math_particle"}
execute as @e[tag=result,limit=1] run function math:particle/set
execute as @e[tag=result,limit=1] run function math:particle/set_operation