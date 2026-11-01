#math:rectangle/_render
# 渲染长方形
# 输入storage math:io render_command
# 输入<render_density,int>控制渲染精细度
# 传入世界实体为执行者

function math:center/_push
scoreboard players operation x int -= d int
scoreboard players operation z int -= l int
# 构造第一条直线并渲染
scoreboard players operation line_dx int = d int
scoreboard players operation line_dx int *= 2 int
scoreboard players set line_dy int 0
scoreboard players set line_dz int 0
function math:line/_render
# 构造第二条直线并渲染
scoreboard players set line_dx int 0
scoreboard players operation line_dz int = l int
scoreboard players operation line_dz int *= 2 int
function math:line/_render
function math:center/_pop

function math:center/_push
scoreboard players operation x int += d int
scoreboard players operation z int += l int
# 构造第三条直线并渲染
scoreboard players operation line_dx int = d int
scoreboard players operation line_dx int *= -2 int
scoreboard players set line_dy int 0
scoreboard players set line_dz int 0
function math:line/_render
# 构造第四条直线并渲染
scoreboard players set line_dx int 0
scoreboard players operation line_dz int = l int
scoreboard players operation line_dz int *= -2 int
function math:line/_render
function math:center/_pop