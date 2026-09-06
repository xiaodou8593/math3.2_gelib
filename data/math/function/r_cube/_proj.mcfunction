#math:r_cube/_proj
# 把数据模板投射到临时对象
# 输入数据模板storage math:io input

execute store result score a int run data get storage math:io input.a 10000
execute store result score r int run data get storage math:io input.r 10000
execute store result score x int run data get storage math:io input.center[0] 10000
execute store result score y int run data get storage math:io input.center[1] 10000
execute store result score z int run data get storage math:io input.center[2] 10000