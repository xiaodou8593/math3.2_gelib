#math:plot/summon_components
# math:plot/_update_display调用

data modify entity @s Pos set from storage math:io xyz
data modify entity @s Rotation set from storage math:io rotation

execute at @s run summon text_display ^ ^ ^ {Tags:["math_plot_board","result"],CustomName:"math_plot_board"}
execute at @s run summon text_display ^0.5 ^2.3 ^0.1 {Tags:["math_plot_arrow_0","result"],CustomName:"math_plot_arrow_0"}
execute at @s run summon text_display ^-0.5 ^5.1 ^0.1 {Tags:["math_plot_arrow_1","result"],CustomName:"math_plot_arrow_1"}
execute at @s run summon text_display ^2.5 ^1.9 ^0.1 {Tags:["math_plot_label_0","result"],CustomName:"math_plot_label_0"}
execute at @s run summon text_display ^-2.0 ^6.5 ^0.1 {Tags:["math_plot_label_1","result"],CustomName:"math_plot_label_1"}

execute as @e[tag=result,tag=math_plot_board,limit=1] run function math:plot/set_board
execute as @e[tag=result,tag=math_plot_arrow_0,limit=1] run function math:plot/set_arrow_0
execute as @e[tag=result,tag=math_plot_arrow_1,limit=1] run function math:plot/set_arrow_1
execute as @e[tag=result,tag=math_plot_label_0,limit=1] run function math:plot/set_label_0
execute as @e[tag=result,tag=math_plot_label_1,limit=1] run function math:plot/set_label_1

# 设置朝向
execute as @e[tag=result] run data modify entity @s Rotation set from storage math:io rotation

# 设置自动清除
scoreboard players set @e[tag=result] killtime 100

# 坐标安全
tp @s 0 0 0