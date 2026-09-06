#math:r_cube/set
# math:r_cube/_new调用

execute store result score @s a run data get storage math:io input.a 10000
execute store result score @s r run data get storage math:io input.r 10000
execute store result score @s x run data get storage math:io input.center[0] 10000
execute store result score @s y run data get storage math:io input.center[1] 10000
execute store result score @s z run data get storage math:io input.center[2] 10000