#math:plot/_get
# 实体对象赋值到临时对象
# 输入执行实体

scoreboard players operation x int = @s x
scoreboard players operation y int = @s y
scoreboard players operation z int = @s z
scoreboard players operation phi int = @s phi
scoreboard players operation theta int = @s theta
scoreboard players operation scale_u int = @s scale_u
scoreboard players operation scale_v int = @s scale_v
scoreboard players operation shift_u int = @s shift_u
scoreboard players operation shift_v int = @s shift_v
data modify storage math:io plot_coords set from entity @s data.plot_coords
data modify storage math:io render_command set from entity @s data.render_command