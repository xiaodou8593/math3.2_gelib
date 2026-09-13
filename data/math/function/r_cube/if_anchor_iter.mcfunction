#math:r_cube/if_anchor_iter
# math:r_cube/_if_anchor调用

execute store result score sstemp_mid int run compute default float math:r_cube/_calc_mid

scoreboard players set sstemp_a int 0
scoreboard players set sstemp_b int 0
scoreboard players set sstemp_c int 0

execute store result score sstemp_q int run compute default float math:r_cube/_calc_q
execute if score sstemp_q int > a int run function math:r_cube/if_anchor/branch_0
scoreboard players operation sstemp_q int *= -1 int
execute if score sstemp_q int > a int run function math:r_cube/if_anchor/branch_1

execute store result score sstemp_q int run compute default float math:r_cube/_calc_qy
execute if score sstemp_q int > a int run function math:r_cube/if_anchor/branch_2
scoreboard players operation sstemp_q int *= -1 int
execute if score sstemp_q int > a int run function math:r_cube/if_anchor/branch_3

execute store result score sstemp_q int run compute default float math:r_cube/_calc_qz
execute if score sstemp_q int > a int run function math:r_cube/if_anchor/branch_4
scoreboard players operation sstemp_q int *= -1 int
execute if score sstemp_q int > a int run function math:r_cube/if_anchor/branch_5

execute if score sstemp_a int matches 1.. run function math:r_cube/if_anchor/branch_6
execute if score sstemp_a int matches ..0 run function math:r_cube/if_anchor/branch_7