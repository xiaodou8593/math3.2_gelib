#math:plot/test_loop
# math:plot/test调用

data modify storage math:io temp set value [0.0d,0.0d]
execute store result storage math:io temp[0] double 0.01 run scoreboard players get loop int
execute store result storage math:io temp[1] double 0.01 run scoreboard players get loop int
data modify storage math:io input append from storage math:io temp
scoreboard players operation res int = loop int
execute store result storage math:io temp[1] double 0.0001 run scoreboard players operation res int *= res int
data modify storage math:io input append from storage math:io temp
scoreboard players set res int 1000000
execute store result storage math:io temp[1] double 0.0001 run scoreboard players operation res int /= loop int
data modify storage math:io input append from storage math:io temp
data modify storage math:io temp append from storage math:io temp[0]
data remove storage math:io temp[0]
data modify storage math:io input append from storage math:io temp

scoreboard players add loop int 5
execute if score loop int matches ..300 run function math:plot/test_loop