#math:plane/cross_point
# math:plane/_if_kvec调用

scoreboard players set res int 1

execute store result score fvec_y int store result score fvec_z int run scoreboard players operation fvec_x int = sres int
scoreboard players operation fvec_x int *= kvec_x int
scoreboard players operation fvec_y int *= kvec_y int
scoreboard players operation fvec_z int *= kvec_z int
scoreboard players operation fvec_x int /= 1000 int
scoreboard players operation fvec_y int /= 1000 int
scoreboard players operation fvec_z int /= 1000 int

scoreboard players operation fvec_x int += vec_x int
scoreboard players operation fvec_y int += vec_y int
scoreboard players operation fvec_z int += vec_z int