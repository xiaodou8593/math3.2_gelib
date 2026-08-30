#math:plot/_anchor_to
# 执行坐标朝向转临时对象
# 输入执行坐标
# 输入执行朝向
# 传入世界实体为执行者

tp @s ~ ~ ~ ~ ~
data modify storage math:io xyz set from entity @s Pos
execute store result score x int run data get storage math:io xyz[0] 10000
execute store result score y int run data get storage math:io xyz[1] 10000
execute store result score z int run data get storage math:io xyz[2] 10000
data modify storage math:io rotation set from entity @s Rotation
execute store result score theta int run data get storage math:io rotation[0] -10000
execute store result score phi int run data get storage math:io rotation[1] 10000

# 坐标安全
tp @s 0 0 0