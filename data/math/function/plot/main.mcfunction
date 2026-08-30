#math:plot/main
# math:plot/tick调用
# 实体对象主程序

# killtime死锁
function marker_control:data/_get
data modify storage math:io result set from storage marker_control:io result.components
execute if data storage math:io result[0] as 0-0-0-0-1 run function math:plot/refresh_killtime

function math:plot/_get

# 获取局部坐标系
execute as 0-0-0-0-0 run function math:rot/_touvw

# 渲染局部坐标系
#scoreboard players set vec_n int 50
#scoreboard players set vec_scale int 3
#execute as 0-0-0-0-0 run function math:uvw/_render_debug

# 获取平面
scoreboard players operation nvec_x int = kvec_x int
scoreboard players operation nvec_y int = kvec_y int
scoreboard players operation nvec_z int = kvec_z int

execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players get y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get z int
data modify entity 0-0-0-0-0 Pos set from storage math:io xyz
execute at 0-0-0-0-0 if entity @p[distance=..128] run function math:plot/main_ui

function math:plot/_store

# 同步箭头与标签的位置
function marker_control:data/_get

scoreboard players set w int 1000
scoreboard players set u int 5000
scoreboard players set v int 23000
scoreboard players operation u int += shift_u int
scoreboard players operation v int += shift_v int
function math:uvw/_tovec_high
data modify entity 0-0-0-0-1 Thrower set from storage marker_control:io result.components[1]
execute as 0-0-0-0-1 on origin run function math:plot/vec_to_pos

scoreboard players set w int 1000
scoreboard players set u int -5000
scoreboard players set v int 51000
scoreboard players operation u int += shift_u int
scoreboard players operation v int += shift_v int
function math:uvw/_tovec_high
data modify entity 0-0-0-0-1 Thrower set from storage marker_control:io result.components[2]
execute as 0-0-0-0-1 on origin run function math:plot/vec_to_pos

scoreboard players set w int 1000
scoreboard players set u int 25000
scoreboard players set v int 19000
scoreboard players operation u int += shift_u int
scoreboard players operation v int += shift_v int
function math:uvw/_tovec_high
data modify entity 0-0-0-0-1 Thrower set from storage marker_control:io result.components[3]
execute as 0-0-0-0-1 on origin run function math:plot/vec_to_pos

scoreboard players set w int 1000
scoreboard players set u int -20000
scoreboard players set v int 65000
scoreboard players operation u int += shift_u int
scoreboard players operation v int += shift_v int
function math:uvw/_tovec_high
data modify entity 0-0-0-0-1 Thrower set from storage marker_control:io result.components[4]
execute as 0-0-0-0-1 on origin run function math:plot/vec_to_pos

# 缩放器
execute store result storage math:io scale_u double 1 run scoreboard players get scale_u int
execute store result storage math:io scale_v double 1 run scoreboard players get scale_v int
# 渲染显示点
execute if data storage math:io plot_coords[0] as 0-0-0-0-0 run function math:plot/render_loop with storage math:io {}