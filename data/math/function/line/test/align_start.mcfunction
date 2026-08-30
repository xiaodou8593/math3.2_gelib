#math:line/test/align_start
# 验证1w倍率整数坐标安全
# 聊天栏调用

tellraw @a "--- align test start ---"

scoreboard players set x int -2147483648
scoreboard players set res int 1

schedule function math:line/test/align_tick 1t replace