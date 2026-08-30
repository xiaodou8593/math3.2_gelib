#math:rgb/test/calc
# 聊天栏执行

execute store result storage math:io duration int 1 run scoreboard players set duration int 50

scoreboard players set min int 2500
scoreboard players set max int 20000

scoreboard players set x int 95000
scoreboard players set y int -560000
scoreboard players set z int 75000

data modify storage math:io test_commands set value []
scoreboard players set loop int 5000
execute if score loop int matches ..40000 run function math:rgb/test/calc_loop