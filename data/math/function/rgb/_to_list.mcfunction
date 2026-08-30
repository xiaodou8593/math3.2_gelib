#math:rgb/_to_list
# 颜色转化为列表形式
# 输出storage math:io rgb_list

scoreboard players operation sstemp int = r int
scoreboard players operation sstemp int *= 65536 int
execute store result storage math:io rgb_list[0] float 0.0000152587890625 run scoreboard players operation sstemp int /= 255 int

scoreboard players operation sstemp int = g int
scoreboard players operation sstemp int *= 65536 int
execute store result storage math:io rgb_list[1] float 0.0000152587890625 run scoreboard players operation sstemp int /= 255 int

scoreboard players operation sstemp int = b int
scoreboard players operation sstemp int *= 65536 int
execute store result storage math:io rgb_list[2] float 0.0000152587890625 run scoreboard players operation sstemp int /= 255 int