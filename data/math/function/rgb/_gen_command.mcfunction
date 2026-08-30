#math:rgb/_gen_command
# 生成渲染指令
# 输入执行位置
# 输入<inp,int>表示渲染时间
# 输出storage math:io result
# 需要传入世界实体

function math:rgb/_to_list
tp @s ~ ~ ~
data modify storage math:io xyz set from entity @s Pos
data modify storage math:io x set from storage math:io xyz[0]
data modify storage math:io y set from storage math:io xyz[1]
data modify storage math:io z set from storage math:io xyz[2]
execute store result storage math:io duration int 1 run scoreboard players get inp int
function math:rgb/gen_command with storage math:io {}