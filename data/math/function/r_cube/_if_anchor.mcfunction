#math:r_cube/_if_anchor
# 检测视线是否穿过圆角正方体
# 输入执行位置
# 输入执行朝向
# 传入世界实体为执行者
# 输出<res,int> 是否穿过?1:0

# 获取视线参数
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

# 计算相对坐标
scoreboard players operation sstemp_x int -= x int
scoreboard players operation sstemp_y int -= y int
scoreboard players operation sstemp_z int -= z int

# 计算距离center最近的位置
execute store result score sstemp_s int run compute default float math:r_cube/_anchor_dot -10000
execute store result score sstemp_sx int run compute default float math:r_cube/_scale_sx
execute store result score sstemp_sy int run compute default float math:r_cube/_scale_sy
execute store result score sstemp_sz int run compute default float math:r_cube/_scale_sz

execute store result score sstemp_r int run compute default float math:r_cube/_dist 10000
execute store result score res int if score sstemp_r int <= r int