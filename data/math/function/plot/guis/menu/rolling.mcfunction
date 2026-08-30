#math:plot/guis/menu/rolling
# math:plot/guis/menu/main调用

scoreboard players operation temp_r int = slot int
scoreboard players operation temp_r int -= last_slot int
scoreboard players operation temp_r int %= 9 int
execute if score temp_r int matches 5..8 run scoreboard players remove temp_r int 9
scoreboard players operation temp_r int *= 100 int
scoreboard players operation temp_r int *= -1 int

execute if score temp_r int matches 0 run return fail

function iframe:player_space/_get
execute as @e[tag=tmp,limit=1] run function math:plot/_get_window
scoreboard players operation scale_u int += temp_r int
scoreboard players operation scale_v int += temp_r int
# 获取当前uv
execute store result score u int run data get storage iframe:io player.uv[0] 10000
execute store result score v int run data get storage iframe:io player.uv[1] 10000

scoreboard players operation dec int = shift_u int
scoreboard players operation dec int -= u int
scoreboard players operation idec int = temp_r int
scoreboard players operation jdec int = scale_u int
function math:dec/_factor
scoreboard players operation shift_u int += dec int

scoreboard players operation dec int = shift_v int
scoreboard players operation dec int -= v int
scoreboard players operation idec int = temp_r int
scoreboard players operation jdec int = scale_v int
function math:dec/_factor
scoreboard players operation shift_v int += dec int

execute as @e[tag=tmp,limit=1] run function math:plot/_store_window