#math:r_cube/_render_cnt
# 输入粒子数量<inp,int>
# 输入storage math:io render_command
# 传入世界实体为执行者

scoreboard players operation sstemp_cnt int = inp int
scoreboard players set ssloop int 1

scoreboard players operation sstemp_r int = r int
scoreboard players operation sstemp_r int /= 10 int

tp @s 0.0 0.0 0.0 0.0 0.0

execute if score ssloop int <= sstemp_cnt int run function math:r_cube/render_loop

tp @s 0 0 0