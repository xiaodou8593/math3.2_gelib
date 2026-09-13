#math:r_cube/if_anchor/branch_4
# math:r_cube/if_anchor_iter调用

scoreboard players operation sstemp_center int = sstemp_z int
scoreboard players operation sstemp_center int -= a int

scoreboard players operation sstemp_delta int = uvec_z int
scoreboard players operation sstemp_delta int *= uvec_z int
scoreboard players operation sstemp_delta int /= 10000 int
scoreboard players operation sstemp_a int += sstemp_delta int

execute store result score sstemp_delta int run compute default float math:r_cube/_calc_2uz_center
scoreboard players operation sstemp_b int += sstemp_delta int

execute store result score sstemp_delta int run compute default float math:r_cube/_calc_center_sqr
scoreboard players operation sstemp_c int += sstemp_delta int