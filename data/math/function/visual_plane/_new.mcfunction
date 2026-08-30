#math:visual_plane/_new
# 使用数据模板生成视觉平面实例
# 输入执行位置
# 输入storage math:io input
# 输出entity @e[tag=result,limit=1]

tag @e[tag=result] remove result
summon text_display ~ ~ ~ {Tags:["math_visual_plane", "result"], CustomName:{"text":"math_visual_plane"}, Passengers:[{id:"minecraft:text_display", Tags:["math_visual_plane_back"], CustomName:{"text":"math_visual_plane_back"}}]}
execute as @e[tag=result,limit=1] run function math:visual_plane/set
execute as @e[tag=result,limit=1] run function math:visual_plane/set_operations