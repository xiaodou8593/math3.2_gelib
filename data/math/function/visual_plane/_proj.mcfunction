#math:visual_plane/_proj
# 把数据模板投射到临时对象
# 输入数据模板storage math:io input

execute store result score x int run data get storage math:io input.center[0] 10000
execute store result score y int run data get storage math:io input.center[1] 10000
execute store result score z int run data get storage math:io input.center[2] 10000
execute store result score nvec_x int run data get storage math:io input.norm_vec[0] 10000
execute store result score nvec_y int run data get storage math:io input.norm_vec[1] 10000
execute store result score nvec_z int run data get storage math:io input.norm_vec[2] 10000
execute store result score r int run data get storage math:io input.rgba[0]
execute store result score g int run data get storage math:io input.rgba[1]
execute store result score b int run data get storage math:io input.rgba[2]
execute store result score a int run data get storage math:io input.rgba[3]
execute store result score scale_u int run data get storage math:io input.scale[0] 10000
execute store result score scale_v int run data get storage math:io input.scale[1] 10000