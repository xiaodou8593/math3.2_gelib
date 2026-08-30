#math:plot/test_damp_loop
# math:plot/test_damp调用

data modify storage math:io temp set value [0.0d,0.0d]
execute store result storage math:io temp[0] double 0.1 run scoreboard players get loop int
execute store result storage math:io temp[1] double 0.0001 run scoreboard players get damp_x int
data modify storage math:io input append from storage math:io temp
function math:damp/_iter

scoreboard players add loop int 1
execute if score loop int < n int run function math:plot/test_damp_loop