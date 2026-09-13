#math:r_cube/if_anchor/branch_6
# math:r_cube/if_anchor_iter调用

data modify storage math:io stemp_d set compute default float math:r_cube/_calc_disc
execute unless predicate {"type":"float_value_check","value":{"type":"storage","storage":"math:io","path":"stemp_d"},"test":{"min":0.0}} run return run function math:r_cube/if_anchor/branch_7

execute store result score sstemp_lo int run compute default float math:r_cube/_calc_lo 10000
execute store result score sstemp_hi int run compute default float math:r_cube/_calc_hi 10000

scoreboard players operation sstemp_lo int > sstemp_left int
scoreboard players operation sstemp_hi int < sstemp_right int

execute if score sstemp_lo int > sstemp_hi int run return fail

scoreboard players operation sstemp_min int < sstemp_lo int
scoreboard players operation sstemp_max int > sstemp_hi int