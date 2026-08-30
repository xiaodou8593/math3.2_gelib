#math:line/test/align_tick
# math:line/test/align_start异步调用

execute as @e[tag=math_marker,limit=1] run function math:line/test/align

execute if score res int matches 1 if score x int matches ..2147483646 run schedule function math:line/test/align_tick 1t replace