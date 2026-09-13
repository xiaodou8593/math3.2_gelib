#math:r_cube/if_anchor/branch_7
# math:r_cube/if_anchor_iter调用

execute store result score sstemp_delta int run compute default float math:r_cube/_calc_r_sqr
execute if score sstemp_c int > sstemp_delta int run return fail

scoreboard players operation sstemp_min int < sstemp_left int
scoreboard players operation sstemp_max int > sstemp_right int