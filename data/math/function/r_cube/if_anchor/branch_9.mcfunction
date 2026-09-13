#math:r_cube/if_anchor/branch_9
# math:r_cube/_if_anchor调用

execute store result score sstemp_t int run compute default float math:r_cube/_calc_ty_1 10000
execute if score sstemp_t int matches 0.. run scoreboard players operation sstemp_k3 int = sstemp_t int
execute store result score sstemp_t int run compute default float math:r_cube/_calc_ty_2 -10000
execute if score sstemp_t int matches 0.. run scoreboard players operation sstemp_k4 int = sstemp_t int