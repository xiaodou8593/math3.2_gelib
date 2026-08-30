#math:rgba/board/_last
# 转动rgba_board列表

scoreboard players remove rgba_board_phi int 1
scoreboard players operation rgba_board_phi int %= 16 int
data modify storage math:io rgba_board prepend from storage math:io rgba_board[-1]
data remove storage math:io rgba_board[-1]