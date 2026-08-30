#math:line/next_block/dx_neg
# math:line/_next_block调用

scoreboard players set sstemp_signx int -1
scoreboard players operation line_dx int *= -1 int
scoreboard players operation iter_x int *= -1 int
scoreboard players operation x int *= -1 int