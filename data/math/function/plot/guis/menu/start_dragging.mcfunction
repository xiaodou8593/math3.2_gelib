#math:plot/guis/menu/start_dragging
# math:plot/guis/menu/main调用

# 存入开始uv与shift
function iframe:player_space/_get
data modify storage iframe:io player.start_uv set from storage iframe:io player.uv
data modify storage iframe:io player.start_shift set value [0.0d,0.0d]
execute as @e[tag=tmp,limit=1] store result storage iframe:io player.start_shift[0] double 0.0001 run scoreboard players get @s shift_u
execute as @e[tag=tmp,limit=1] store result storage iframe:io player.start_shift[1] double 0.0001 run scoreboard players get @s shift_v
function iframe:player_space/_store