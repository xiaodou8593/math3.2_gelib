#math:r_cube/render_loop
# math:r_cube/_render_cnt调用

# 计算单位球的z坐标
scoreboard players operation uvec_z int = ssloop int
scoreboard players operation uvec_z int *= 20000 int
scoreboard players remove uvec_z int 10000
scoreboard players operation uvec_z int /= sstemp_cnt int
scoreboard players remove uvec_z int 10000

# 计算小圆半径
scoreboard players set inp int 100000000
scoreboard players operation sstemp_sqr int = uvec_z int
scoreboard players operation sstemp_sqr int *= sstemp_sqr int
scoreboard players operation inp int -= sstemp_sqr int
function math:_sqrt

# 计算单位球的xy坐标
execute store result entity @s Rotation[0] float 222.49223595 run scoreboard players get ssloop int
execute at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score uvec_x int run data get storage math:io xyz[2] 10000
execute store result score uvec_y int run data get storage math:io xyz[0] 10000
scoreboard players operation uvec_x int *= res int
scoreboard players operation uvec_x int /= 10000 int
scoreboard players operation uvec_y int *= res int
scoreboard players operation uvec_y int /= 10000 int

# 单位球伸缩
scoreboard players operation sstemp_ux int = uvec_x int
scoreboard players operation sstemp_uy int = uvec_y int
scoreboard players operation sstemp_uz int = uvec_z int
execute if score sstemp_ux int matches ..-1 run scoreboard players operation sstemp_ux int *= -1 int
execute if score sstemp_uy int matches ..-1 run scoreboard players operation sstemp_uy int *= -1 int
execute if score sstemp_uz int matches ..-1 run scoreboard players operation sstemp_uz int *= -1 int
execute store result score sstemp_mid int store result score sstemp_max int run scoreboard players operation sstemp_min int = sstemp_ux int
scoreboard players operation sstemp_min int < sstemp_uy int
scoreboard players operation sstemp_min int < sstemp_uz int
scoreboard players operation sstemp_max int > sstemp_uy int
scoreboard players operation sstemp_max int > sstemp_uz int
scoreboard players operation sstemp_mid int += sstemp_uy int
scoreboard players operation sstemp_mid int += sstemp_uz int
scoreboard players operation sstemp_mid int -= sstemp_min int
scoreboard players operation sstemp_mid int -= sstemp_max int

execute store result score sstemp_c1 int run compute default float math:r_cube/_cmp_1
execute store result score sstemp_c2 int run compute default float math:r_cube/_cmp_2
execute if score sstemp_c1 int matches 1.. run function math:r_cube/render/branch_1
execute if score sstemp_c1 int matches ..0 if score sstemp_c2 int matches 1.. \
	run function math:r_cube/render/branch_2
execute if score sstemp_c2 int matches ..0 run function math:r_cube/render/branch_3

execute store result score uvec_x int run compute default float math:r_cube/_scale_x 10000
execute store result score uvec_y int run compute default float math:r_cube/_scale_y 10000
execute store result score uvec_z int run compute default float math:r_cube/_scale_z 10000

# 访问坐标
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players operation uvec_x int += x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players operation uvec_y int += y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players operation uvec_z int += z int
data modify entity @s Pos set from storage math:io xyz
execute at @s run function math:render_run with storage math:io {}

scoreboard players add ssloop int 1
execute if score ssloop int <= sstemp_cnt int run function math:r_cube/render_loop