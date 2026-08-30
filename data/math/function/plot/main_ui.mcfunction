#math:plot/main_ui
# math:plot/main调用

# 计算平面交点
execute as @p[distance=..128,limit=1,sort=nearest] at @s anchored eyes positioned ^ ^ ^ as 0-0-0-0-0 run function math:plane/_if_anchor
execute if score res int matches 0 run return fail
execute if score sres int matches ..0 run return fail

# 获取相对坐标
scoreboard players operation fvec_x int -= x int
scoreboard players operation fvec_y int -= y int
scoreboard players operation fvec_z int -= z int

# 计算平面uv坐标
function math:uvw/_fvec_to_high

execute unless score u int matches -53000..57000 run return fail
execute unless score v int matches 0..96000 run return fail

# 渲染交点
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players operation fvec_x int += x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players operation fvec_y int += y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players operation fvec_z int += z int
data modify entity 0-0-0-0-0 Pos set from storage math:io xyz
#execute at 0-0-0-0-0 run particle flame

# 查询玩家iframe_ui状态，进入iframe_ui
data modify storage math:io run_uuid set from entity @s UUID
execute as @p[distance=..128,limit=1,sort=nearest] run function math:plot/guis/menu/refresh