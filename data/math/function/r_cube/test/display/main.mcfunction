#math:r_cube/test/display/main

execute unless score test int matches -1 run return fail
scoreboard players set @s killtime 10

#tellraw @a "---"
#tellraw @a ["test_n: ", {"score":{"name":"test_n","objective":"int"}}]

function math:r_cube/_get

scoreboard players set inp int 1024
execute as @e[tag=math_marker,limit=1] run function math:r_cube/_render_cnt

execute as @p at @s anchored eyes positioned ^ ^ ^ as @e[tag=math_marker,limit=1] run function math:r_cube/_if_anchor

scoreboard players set r int 0
scoreboard players set g int 255
scoreboard players set b int 0
execute if score res int matches 1 run scoreboard players operation r int >< g int
function math:rgb/_to_list

#scoreboard players set test int 1
scoreboard players add test_n int 1