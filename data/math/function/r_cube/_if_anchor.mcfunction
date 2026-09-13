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
execute store result score uvec_x int run data get storage math:io xyz[0] 10000
execute store result score uvec_y int run data get storage math:io xyz[1] 10000
execute store result score uvec_z int run data get storage math:io xyz[2] 10000

# 计算相对坐标
scoreboard players operation sstemp_x int -= x int
scoreboard players operation sstemp_y int -= y int
scoreboard players operation sstemp_z int -= z int

scoreboard players set sstemp_k0 int 0
scoreboard players set sstemp_k1 int 2147483647
scoreboard players set sstemp_k2 int 2147483647
scoreboard players set sstemp_k3 int 2147483647
scoreboard players set sstemp_k4 int 2147483647
scoreboard players set sstemp_k5 int 2147483647
scoreboard players set sstemp_k6 int 2147483647

# 计算初始k_i
execute unless score uvec_x int matches 0 run function math:r_cube/if_anchor/branch_8
execute unless score uvec_y int matches 0 run function math:r_cube/if_anchor/branch_9
execute unless score uvec_z int matches 0 run function math:r_cube/if_anchor/branch_10

# 手动冒泡排序
execute if score sstemp_k0 int > sstemp_k1 int run scoreboard players operation sstemp_k0 int >< sstemp_k1 int
execute if score sstemp_k1 int > sstemp_k2 int run scoreboard players operation sstemp_k1 int >< sstemp_k2 int
execute if score sstemp_k2 int > sstemp_k3 int run scoreboard players operation sstemp_k2 int >< sstemp_k3 int
execute if score sstemp_k3 int > sstemp_k4 int run scoreboard players operation sstemp_k3 int >< sstemp_k4 int
execute if score sstemp_k4 int > sstemp_k5 int run scoreboard players operation sstemp_k4 int >< sstemp_k5 int
execute if score sstemp_k5 int > sstemp_k6 int run scoreboard players operation sstemp_k5 int >< sstemp_k6 int
execute if score sstemp_k0 int > sstemp_k1 int run scoreboard players operation sstemp_k0 int >< sstemp_k1 int
execute if score sstemp_k1 int > sstemp_k2 int run scoreboard players operation sstemp_k1 int >< sstemp_k2 int
execute if score sstemp_k2 int > sstemp_k3 int run scoreboard players operation sstemp_k2 int >< sstemp_k3 int
execute if score sstemp_k3 int > sstemp_k4 int run scoreboard players operation sstemp_k3 int >< sstemp_k4 int
execute if score sstemp_k4 int > sstemp_k5 int run scoreboard players operation sstemp_k4 int >< sstemp_k5 int
execute if score sstemp_k0 int > sstemp_k1 int run scoreboard players operation sstemp_k0 int >< sstemp_k1 int
execute if score sstemp_k1 int > sstemp_k2 int run scoreboard players operation sstemp_k1 int >< sstemp_k2 int
execute if score sstemp_k2 int > sstemp_k3 int run scoreboard players operation sstemp_k2 int >< sstemp_k3 int
execute if score sstemp_k3 int > sstemp_k4 int run scoreboard players operation sstemp_k3 int >< sstemp_k4 int
execute if score sstemp_k0 int > sstemp_k1 int run scoreboard players operation sstemp_k0 int >< sstemp_k1 int
execute if score sstemp_k1 int > sstemp_k2 int run scoreboard players operation sstemp_k1 int >< sstemp_k2 int
execute if score sstemp_k2 int > sstemp_k3 int run scoreboard players operation sstemp_k2 int >< sstemp_k3 int
execute if score sstemp_k0 int > sstemp_k1 int run scoreboard players operation sstemp_k0 int >< sstemp_k1 int
execute if score sstemp_k1 int > sstemp_k2 int run scoreboard players operation sstemp_k1 int >< sstemp_k2 int
execute if score sstemp_k0 int > sstemp_k1 int run scoreboard players operation sstemp_k0 int >< sstemp_k1 int

scoreboard players set sstemp_min int 2147483647
scoreboard players set sstemp_max int -2147483648

scoreboard players operation sstemp_left int = sstemp_k0 int
scoreboard players operation sstemp_right int = sstemp_k1 int
function math:r_cube/if_anchor_iter

scoreboard players operation sstemp_left int = sstemp_k1 int
scoreboard players operation sstemp_right int = sstemp_k2 int
function math:r_cube/if_anchor_iter

scoreboard players operation sstemp_left int = sstemp_k2 int
scoreboard players operation sstemp_right int = sstemp_k3 int
function math:r_cube/if_anchor_iter

scoreboard players operation sstemp_left int = sstemp_k3 int
scoreboard players operation sstemp_right int = sstemp_k4 int
function math:r_cube/if_anchor_iter

scoreboard players operation sstemp_left int = sstemp_k4 int
scoreboard players operation sstemp_right int = sstemp_k5 int
function math:r_cube/if_anchor_iter

scoreboard players operation sstemp_left int = sstemp_k5 int
scoreboard players operation sstemp_right int = sstemp_k6 int
function math:r_cube/if_anchor_iter

scoreboard players operation sstemp_left int = sstemp_k6 int
scoreboard players set sstemp_right int 2147483647
function math:r_cube/if_anchor_iter

execute store result score res int if score sstemp_min int <= sstemp_max int