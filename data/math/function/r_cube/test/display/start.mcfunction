#math:r_cube/test/display/start

function math:r_cube/init

# 生成测试程序实体
data modify storage math:io input set from storage math:class r_cube_plate
function math:r_cube/_proj
execute positioned 0.0 0.0 0.0 rotated 0.0 0.0 as @e[tag=math_marker,limit=1] run function math:r_cube/_anchor_to
function math:r_cube/_model
data modify storage math:io input set from storage math:io result
execute positioned 0.0 0.0 0.0 run function math:r_cube/_new
tag @e[tag=result,limit=1] add test

execute as @e[tag=result,limit=1] run function marker_control:data/_get

# 设置测试程序主函数和销毁函数
data modify storage marker_control:io result.tick_func set value "math:r_cube/test/display/main"
data modify storage marker_control:io result.del_func set value "math:r_cube/test/display/end"

execute as @e[tag=result,limit=1] run function marker_control:data/_store
tag @e[tag=result,limit=1] add entity_ticked
tag @e[tag=result,limit=1] add entity_todel

# 设置测试程序运行时间
scoreboard players set @e[tag=result,limit=1] killtime 20

scoreboard players set test int -1
scoreboard players set test_n int 0

data modify storage math:io test_frames set value {}

scoreboard players set r int 0
scoreboard players set g int 255
scoreboard players set b int 0
function math:rgb/_to_list
data modify storage math:io duration set value 2
data modify storage math:io render_command set value "function math:rgb/_render_cache"