#math:line/test/align_loop
# math:line/test/align调用

# 生成坐标
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get x int
data modify entity @s Pos set from storage math:io xyz

# 获取取整坐标
execute at @s align x run tp @s ~0.5 ~ ~
data modify storage math:io xyz set from entity @s Pos
execute store result score sstempx int run data get storage math:io xyz[0]

# 作差对比
scoreboard players operation stempx int = x int
scoreboard players operation x int /= 10000 int
scoreboard players operation x int -= sstempx int

# 输出结果
execute unless score x int matches 0 run scoreboard players set res int 0

scoreboard players operation x int = stempx int

scoreboard players add x int 1
execute if score x int matches 2147483647 run scoreboard players set loop int 1
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function math:line/test/align_loop