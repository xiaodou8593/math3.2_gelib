#math:plane/cross_point_facing
# math:plane/_if_anchor调用

scoreboard players set res int 1

execute store result score fvec_y int store result score fvec_z int run scoreboard players operation fvec_x int = sres int
scoreboard players operation fvec_x int *= sstemp_kx int
scoreboard players operation fvec_y int *= sstemp_ky int
scoreboard players operation fvec_z int *= sstemp_kz int
scoreboard players operation fvec_x int /= 1000 int
scoreboard players operation fvec_y int /= 1000 int
scoreboard players operation fvec_z int /= 1000 int

scoreboard players operation fvec_x int += sstemp_x int
scoreboard players operation fvec_y int += sstemp_y int
scoreboard players operation fvec_z int += sstemp_z int