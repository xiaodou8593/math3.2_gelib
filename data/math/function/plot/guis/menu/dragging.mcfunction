#math:plot/guis/menu/dragging
# math:plot/guis/menu/main调用

function iframe:player_space/_get
# 防止ui退出
data modify storage iframe:io player.plot_uuid set from entity @e[tag=tmp,limit=1] UUID
function iframe:player_space/_store
# 获取起始uv和当前uv
execute store result score sstemp_0 int run data get storage iframe:io player.start_shift[0] 10000
execute store result score sstemp_1 int run data get storage iframe:io player.start_shift[1] 10000
execute store result score sstemp_u int run data get storage iframe:io player.start_uv[0] 10000
execute store result score sstemp_v int run data get storage iframe:io player.start_uv[1] 10000
execute store result score u int run data get storage iframe:io player.uv[0] 10000
execute store result score v int run data get storage iframe:io player.uv[1] 10000

# 计算当前偏移
scoreboard players operation u int -= sstemp_u int
scoreboard players operation v int -= sstemp_v int
scoreboard players operation u int += sstemp_0 int
scoreboard players operation v int += sstemp_1 int

scoreboard players operation @e[tag=tmp,limit=1] shift_u = u int
scoreboard players operation @e[tag=tmp,limit=1] shift_v = v int