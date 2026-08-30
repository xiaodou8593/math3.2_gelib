#math:plot/test
# 聊天栏执行

execute anchored eyes positioned ^ ^-3.2 ^10 facing ^ ^ ^-1 run function math:plot/_summon_here

data modify storage math:io input set value []
scoreboard players set loop int -300
execute if score loop int matches ..300 run function math:plot/test_loop

execute as @e[tag=result,limit=1] run function math:plot/_upload_coords_as

scoreboard players set r int 255
scoreboard players set g int 255
scoreboard players set b int 0
execute as @e[tag=result,limit=1] run function math:plot/_get
data modify storage math:io render_command set value "function math:rgb/_render_debug_2"
execute as @e[tag=result,limit=1] run function math:plot/_store