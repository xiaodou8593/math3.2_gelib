#math:plane/_gen
# 临时对象生成平面实体对象
# 输出 @e[tag=result,limit=1]

tag @e[tag=result] remove result
summon text_display 0 0 0 {Tags:["math_plane", "result"], CustomName:"math_plane", Passengers:[{id:"minecraft:text_display", Tags:["math_plane_back"], CustomName:"math_plane_back"}]}
execute as @e[tag=result,limit=1] run function math:plane/gen_set