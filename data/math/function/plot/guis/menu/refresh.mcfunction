#math:plot/guis/menu/refresh
# math:plot/main_ui调用

# 如果不是iframe_player则强制进入该ui
execute unless entity @s[tag=iframe_player] run function iframe:_ienter {gui:"math:plot/guis/menu"}

# 如果是iframe_player且iframe_ui不是math:plot/guis/menu则等待
function iframe:player_space/_get
execute unless data storage iframe:io player{gui_using:"math:plot/guis/menu"} run return fail

# 存入当前交点坐标
data modify storage iframe:io player.uv set value [0.0d,0.0d]
execute store result storage iframe:io player.uv[0] double 0.0001 run scoreboard players get u int
execute store result storage iframe:io player.uv[1] double 0.0001 run scoreboard players get v int
# 存入该plot的UUID
data modify storage iframe:io player.plot_uuid set from storage math:io run_uuid
function iframe:player_space/_store