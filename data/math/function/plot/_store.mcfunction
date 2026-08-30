#math:plot/_store
# 临时对象赋值到实体对象
# 输入执行实体

scoreboard players operation @s x = x int
scoreboard players operation @s y = y int
scoreboard players operation @s z = z int
scoreboard players operation @s phi = phi int
scoreboard players operation @s theta = theta int
scoreboard players operation @s scale_u = scale_u int
scoreboard players operation @s scale_v = scale_v int
scoreboard players operation @s shift_u = shift_u int
scoreboard players operation @s shift_v = shift_v int
data modify entity @s data.plot_coords set from storage math:io plot_coords
data modify entity @s data.render_command set from storage math:io render_command