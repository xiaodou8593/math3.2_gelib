#math:r_cube/if_anchor/branch_10
# math:r_cube/_if_anchor调用

execute store result score sstemp_t int run compute default float math:r_cube/_calc_tz_1 10000
execute if score sstemp_t int matches 0.. run scoreboard players operation sstemp_k5 int = sstemp_t int
execute store result score sstemp_t int run compute default float math:r_cube/_calc_tz_2 -10000
execute if score sstemp_t int matches 0.. run scoreboard players operation sstemp_k6 int = sstemp_t int