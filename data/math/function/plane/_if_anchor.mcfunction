#math:plane/_if_anchor
# 计算射线与平面相交
# 输入执行坐标
# 输入执行朝向
# 输出<res,int>, 是否相交?1:0
# 输出<sres,int,1w>, 代表kvec需要缩放多少倍到达交点
# 输出交点坐标为fvec{<fvec_x,int,1w>,<fvec_y,int,1w>,<fvec_z,int,1w>}
# 需要传入世界实体为执行者

tp @s ~ ~ ~
data modify storage math:io xyz set from entity @s Pos
execute store result score sstemp_x int run data get storage math:io xyz[0] 10000
execute store result score sstemp_y int run data get storage math:io xyz[1] 10000
execute store result score sstemp_z int run data get storage math:io xyz[2] 10000

execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score sstemp_kx int run data get storage math:io xyz[0] 10000
execute store result score sstemp_ky int run data get storage math:io xyz[1] 10000
execute store result score sstemp_kz int run data get storage math:io xyz[2] 10000

scoreboard players operation sres int = x int
scoreboard players operation sres int -= sstemp_x int
scoreboard players operation sres int /= 10 int
scoreboard players operation sres int *= nvec_x int
scoreboard players operation sstemp_0 int = y int
scoreboard players operation sstemp_0 int -= sstemp_y int
scoreboard players operation sstemp_0 int /= 10 int
scoreboard players operation sstemp_0 int *= nvec_y int
scoreboard players operation sres int += sstemp_0 int
scoreboard players operation sstemp_0 int = z int
scoreboard players operation sstemp_0 int -= sstemp_z int
scoreboard players operation sstemp_0 int /= 10 int
scoreboard players operation sstemp_0 int *= nvec_z int
scoreboard players operation sres int += sstemp_0 int

scoreboard players operation sstemp_div int = sstemp_kx int
scoreboard players operation sstemp_div int *= nvec_x int
scoreboard players operation sstemp_0 int = sstemp_ky int
scoreboard players operation sstemp_0 int *= nvec_y int
scoreboard players operation sstemp_div int += sstemp_0 int
scoreboard players operation sstemp_0 int = sstemp_kz int
scoreboard players operation sstemp_0 int *= nvec_z int
scoreboard players operation sstemp_div int += sstemp_0 int
scoreboard players operation sstemp_div int /= 10000 int

scoreboard players operation sres int /= sstemp_div int

scoreboard players set res int 0
execute if score sres int matches -128000..128000 run function math:plane/cross_point_facing