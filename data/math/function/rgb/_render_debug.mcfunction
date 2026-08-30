#math:rgb/_render_debug
# 渲染RGB颜色
# 输入执行位置
# 输入<inp,int>表示渲染时间
# 需要传入世界实体

function math:rgb/_to_list
tp @s ~ ~ ~
data modify storage math:io xyz set from entity @s Pos
execute store result storage math:io duration int 1 run scoreboard players get inp int
function math:rgb/render_command with storage math:io {}