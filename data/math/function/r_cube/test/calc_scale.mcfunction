#math:r_cube/test/calc_scale

scoreboard players set uvec_x int -6923
scoreboard players set uvec_y int -527
scoreboard players set uvec_z int 7197

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