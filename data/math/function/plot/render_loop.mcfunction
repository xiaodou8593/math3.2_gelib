#math:plot/render_loop
# math:plot/main调用

# 对数据进行缩放
$execute store result score u int run data get storage math:io plot_coords[0][0] $(scale_u)
$execute store result score v int run data get storage math:io plot_coords[0][1] $(scale_v)
scoreboard players operation u int += shift_u int
scoreboard players operation v int += shift_v int
scoreboard players remove u int 14000
scoreboard players add v int 32000
scoreboard players set res int 1
execute unless score u int matches -53000..57000 run scoreboard players set res int 0
execute unless score v int matches 0..96000 run scoreboard players set res int 0
function math:uvw/_tovec_high
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get vec_x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players get vec_y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get vec_z int
data modify entity @s Pos set from storage math:io xyz
execute if score res int matches 1 at @s run function math:_render

data remove storage math:io plot_coords[0]
execute if data storage math:io plot_coords[0] run function math:plot/render_loop with storage math:io {}