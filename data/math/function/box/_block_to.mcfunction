#math:box/_block_to
# 方块坐标确定盒子
# 输入执行坐标
# 需要以世界实体为执行者

execute align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
data modify storage math:io xyz set from entity @s Pos
execute store result score x int run data get storage math:io xyz[0] 10000
execute store result score y int run data get storage math:io xyz[1] 10000
execute store result score z int run data get storage math:io xyz[2] 10000

scoreboard players set d int 500000
scoreboard players set h int 1000000
scoreboard players set l int 500000