#math:plot/_zero
# 把临时对象的全部数据置0

scoreboard players set x int 0
scoreboard players set y int 0
scoreboard players set z int 0
scoreboard players set phi int 0
scoreboard players set theta int 0
scoreboard players set scale_u int 0
scoreboard players set scale_v int 0
scoreboard players set shift_u int 0
scoreboard players set shift_v int 0
data modify storage math:io plot_coords set value []
data modify storage math:io render_command set value ""