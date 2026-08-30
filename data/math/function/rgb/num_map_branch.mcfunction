#math:rgb/num_map_branch
# math:rgb/_num_map调用

scoreboard players set r int 0

scoreboard players operation g int = res int
scoreboard players operation g int *= 510 int
scoreboard players operation g int /= 10000 int

scoreboard players operation b int = res int
scoreboard players operation b int *= -510 int
scoreboard players operation b int /= 10000 int
scoreboard players add b int 255