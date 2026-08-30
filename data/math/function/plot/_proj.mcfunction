#math:plot/_proj
# 把数据模板投射到临时对象
# 输入数据模板storage math:io input

execute store result score x int run data get storage math:io input.center[0] 10000
execute store result score y int run data get storage math:io input.center[1] 10000
execute store result score z int run data get storage math:io input.center[2] 10000
execute store result score phi int run data get storage math:io input.rot[0] 10000
execute store result score theta int run data get storage math:io input.rot[1] 10000
execute store result score scale_u int run data get storage math:io input.scale_coord[0] 10000
execute store result score scale_v int run data get storage math:io input.scale_coord[1] 10000
execute store result score shift_u int run data get storage math:io input.shift_coord[0] 10000
execute store result score shift_v int run data get storage math:io input.shift_coord[1] 10000
data modify storage math:io plot_coords set from storage math:io input.plot_coords
data modify storage math:io render_command set from storage math:io input.render_command