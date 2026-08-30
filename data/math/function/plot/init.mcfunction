#math:plot/init
# 初始化plot模块

data modify storage math:io plot_coords set value []
data modify storage math:io render_command set value ""

scoreboard objectives add phi dummy
scoreboard objectives add theta dummy
scoreboard objectives add scale_u dummy
scoreboard objectives add scale_v dummy
scoreboard objectives add shift_u dummy
scoreboard objectives add shift_v dummy

function math:plot/_consts

function math:plot/_class