#math:rgb/_num_map
# 将数值映射为rgb颜色
# 输入{<min,int,1w>,<max,int,1w>}
# 输入<inp,int,1w>

scoreboard players operation res int = inp int
scoreboard players operation res int -= min int
scoreboard players operation inp int = max int
scoreboard players operation inp int -= min int
function math:_4div
scoreboard players operation res int > 0 int
scoreboard players operation res int < 10000 int

execute if score res int matches ..5000 run return run function math:rgb/num_map_branch

scoreboard players operation r int = res int
scoreboard players operation r int *= 510 int
scoreboard players operation r int /= 10000 int
scoreboard players remove r int 255

scoreboard players operation g int = res int
scoreboard players operation g int *= -510 int
scoreboard players operation g int /= 10000 int
scoreboard players add g int 510

scoreboard players set b int 0