#math:plane/_anchor_to
# 执行方位转为平面
# 需要传入世界实体

tp @s ~ ~ ~
data modify storage math:io xyz set from entity @s Pos
execute store result score x int run data get storage math:io xyz[0] 10000
execute store result score y int run data get storage math:io xyz[1] 10000
execute store result score z int run data get storage math:io xyz[2] 10000
execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score nvec_x int run data get storage math:io xyz[0] 10000
execute store result score nvec_y int run data get storage math:io xyz[1] 10000
execute store result score nvec_z int run data get storage math:io xyz[2] 10000