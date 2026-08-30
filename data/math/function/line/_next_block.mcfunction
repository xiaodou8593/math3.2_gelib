#math:line/_next_block
# 寻找线段经过的下一个方块
# 迭代{<iter_x,int>, <iter_y,int>, <iter_z,int>}
# 输出<res,int>表示是否超出线段范围
# 溢出风险：线段长度不超过21格

# 符号对称
scoreboard players set sstemp_signx int 1
execute if score line_dx int matches ..-1 run function math:line/next_block/dx_neg
scoreboard players set sstemp_signy int 1
execute if score line_dy int matches ..-1 run function math:line/next_block/dy_neg
scoreboard players set sstemp_signz int 1
execute if score line_dz int matches ..-1 run function math:line/next_block/dz_neg

# 到下一个方块的步进量
scoreboard players operation sstemp_stepx int = iter_x int
scoreboard players operation sstemp_stepx int %= 10000 int
scoreboard players operation sstemp_stepx int *= -1 int
scoreboard players add sstemp_stepx int 10000
scoreboard players operation sstemp_stepy int = iter_y int
scoreboard players operation sstemp_stepy int %= 10000 int
scoreboard players operation sstemp_stepy int *= -1 int
scoreboard players add sstemp_stepy int 10000
scoreboard players operation sstemp_stepz int = iter_z int
scoreboard players operation sstemp_stepz int %= 10000 int
scoreboard players operation sstemp_stepz int *= -1 int
scoreboard players add sstemp_stepz int 10000

# 比较xy选出步进较短者
scoreboard players operation sstemp_a int = sstemp_stepx int
scoreboard players operation sstemp_a int *= line_dy int
scoreboard players operation sstemp_b int = sstemp_stepy int
scoreboard players operation sstemp_b int *= line_dx int
execute if score sstemp_a int <= sstemp_b int run function math:line/next_block/load_dx
execute if score sstemp_a int > sstemp_b int run function math:line/next_block/load_dy

# 比较z选出步进最短者
scoreboard players operation sstemp_a int = sstemp_stepz int
scoreboard players operation sstemp_a int *= sstemp_du int
scoreboard players operation sstemp_b int = sstemp_stepu int
scoreboard players operation sstemp_b int *= line_dz int
execute if score sstemp_a int <= sstemp_b int run function math:line/next_block/load_dz

scoreboard players set res int 0

# 迭代方块坐标
scoreboard players operation sstemp_stepx int = sstemp_stepu int
scoreboard players operation sstemp_stepx int *= line_dx int
scoreboard players operation sstemp_stepx int /= sstemp_du int
scoreboard players operation iter_x int += sstemp_stepx int
scoreboard players operation sstemp_res int = iter_x int
scoreboard players operation sstemp_res int -= x int
execute if score sstemp_res int > line_dx int run scoreboard players set res int 1

scoreboard players operation sstemp_stepy int = sstemp_stepu int
scoreboard players operation sstemp_stepy int *= line_dy int
scoreboard players operation sstemp_stepy int /= sstemp_du int
scoreboard players operation iter_y int += sstemp_stepy int
scoreboard players operation sstemp_res int = iter_y int
scoreboard players operation sstemp_res int -= y int
execute if score sstemp_res int > line_dy int run scoreboard players set res int 1

scoreboard players operation sstemp_stepz int = sstemp_stepu int
scoreboard players operation sstemp_stepz int *= line_dz int
scoreboard players operation sstemp_stepz int /= sstemp_du int
scoreboard players operation iter_z int += sstemp_stepz int
scoreboard players operation sstemp_res int = iter_z int
scoreboard players operation sstemp_res int -= z int
execute if score sstemp_res int > line_dz int run scoreboard players set res int 1

# 符号还原
scoreboard players operation x int *= sstemp_signx int
scoreboard players operation iter_x int *= sstemp_signx int
scoreboard players operation line_dx int *= sstemp_signx int
scoreboard players operation y int *= sstemp_signy int
scoreboard players operation iter_y int *= sstemp_signy int
scoreboard players operation line_dy int *= sstemp_signy int
scoreboard players operation z int *= sstemp_signz int
scoreboard players operation iter_z int *= sstemp_signz int
scoreboard players operation line_dz int *= sstemp_signz int