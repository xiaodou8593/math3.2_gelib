#math:rgb/test/render_async_start
# 聊天栏调用

scoreboard players set test_n int 0
execute store result score n int run data get storage math:io test_commands

tag @e[tag=result] remove result
summon marker 0 0 0 {Tags:["math_rgb_test","result"],CustomName:'math_rgb_test'}

execute as @e[tag=result,limit=1] run function marker_control:data/_get
data modify storage marker_control:io result.tick_func set value "math:rgb/test/render_async_main"
execute as @e[tag=result,limit=1] run function marker_control:data/_store
tag @e[tag=result,limit=1] add entity_ticked

scoreboard players set @e[tag=result,limit=1] killtime 10