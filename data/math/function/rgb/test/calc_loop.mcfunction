#math:rgb/test/calc_loop
# math:rgb/test/calc调用

#scoreboard players set inp int 100000000
#scoreboard players operation inp int /= loop int
scoreboard players set inp int 45000
scoreboard players operation inp int -= loop int
scoreboard players operation inp int /= 2 int

scoreboard players operation vec_x int = loop int
execute store result storage math:io xyz[0] double 0.0001 store result storage math:io x double 0.0001 run scoreboard players operation vec_x int += x int
scoreboard players operation vec_y int = inp int
execute store result storage math:io xyz[1] double 0.0001 store result storage math:io y double 0.0001 run scoreboard players operation vec_y int += y int
execute store result storage math:io xyz[2] double 0.0001 store result storage math:io z double 0.0001 run scoreboard players operation vec_z int = z int

function math:rgb/_num_map
function math:rgb/_to_list

function math:rgb/test/append_command with storage math:io {}

scoreboard players add loop int 10
execute if score loop int matches ..40000 run function math:rgb/test/calc_loop