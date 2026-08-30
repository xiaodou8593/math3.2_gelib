#math:rgb/_gen
# 生成RGB实例
# 输入执行位置
# 输出entity @e[tag=result,limit=1]

tag @e[tag=result] remove result
summon marker ~ ~ ~ {Tags:["result","math_rgb"],CustomName:"math_rgb"}
execute as @e[tag=result,limit=1] run function math:rgb/_store