#math:line/test/next_coord_loop
# math:line/test/next_block_main调用

execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get iter_x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players get iter_y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get iter_z int
data modify entity 0-0-0-0-0 Pos set from storage math:io xyz
execute as 0-0-0-0-0 at @s run function math:box/_block_to

scoreboard players set render_density int 10
data modify storage math:io render_command set from storage math:class particle_commands.red_dust
execute as 0-0-0-0-0 run function math:box/_render

function math:line/_get
function math:line/_next_block
execute if score res int matches 0 run function math:line/test/next_block_loop