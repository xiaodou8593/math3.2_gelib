#math:rgba/_proj
# rgba数据模板投射到临时对象
# 输入storage math:io input

execute store result score r int run data get storage math:io input[0]
execute store result score g int run data get storage math:io input[1]
execute store result score b int run data get storage math:io input[2]
execute store result score a int run data get storage math:io input[3]