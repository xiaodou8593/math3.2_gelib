#math:rgba/board/_next
# 转动rgba_board列表

scoreboard players add rgba_board_phi int 1
scoreboard players operation rgba_board_phi int %= 16 int
data modify storage math:io rgba_board append from storage math:io rgba_board[0]
data remove storage math:io rgba_board[0]