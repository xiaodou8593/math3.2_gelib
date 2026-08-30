#math:plot/test_damp
# 聊天栏执行

scoreboard players set damp_x int 30000
scoreboard players set damp_v int 0

scoreboard players set n int 500
data modify storage math:io input set value []
scoreboard players set loop int 0
execute if score loop int < n int run function math:plot/test_damp_loop

execute as @e[tag=math_plot,limit=1,sort=nearest] run function math:plot/_clear_coords_as
execute as @e[tag=math_plot,limit=1,sort=nearest] run function math:plot/_upload_coords_as