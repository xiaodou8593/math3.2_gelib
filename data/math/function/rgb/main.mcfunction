#math:rgb/main
# RGB实例的主程序

function math:rgb/_get
function math:rgb/_to_list
data modify storage math:io xyz set from entity @s Pos
data modify storage math:io duration set value 1
execute at @s run function math:rgb/render_command with storage math:io {}