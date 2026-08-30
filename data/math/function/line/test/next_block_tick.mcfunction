#math:line/test/next_block_tick
# 命令方块调用

function math:test/_coords
execute at @e[tag=test_coord,limit=1] positioned ~ ~0.5 ~ facing ~1 ~ ~2 as 0-0-0-0-0 run function math:line/_anchor_to
scoreboard players operation line_dx int *= 3 int
scoreboard players operation line_dy int *= 3 int
scoreboard players operation line_dz int *= 3 int

scoreboard players set render_density int 20
data modify storage math:io render_command set from storage math:class particle_commands.blue_dust
execute as 0-0-0-0-0 run function math:line/_render

execute as 0-0-0-0-0 run function math:line/_store
scoreboard players operation iter_x int = x int
scoreboard players operation iter_y int = y int
scoreboard players operation iter_z int = z int
function math:line/_next_block
execute if score res int matches 0 as 0-0-0-0-0 run function math:line/test/next_block_loop