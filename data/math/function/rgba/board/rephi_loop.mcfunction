#math:rgba/board/rephi_loop
# math:rgba/board/_rephi调用

data modify storage math:io rgba_board prepend from storage math:io rgba_board[-1]
data remove storage math:io rgba_board[-1]

scoreboard players remove rgba_board_phi int 1
execute if score rgba_board_phi int matches 1.. run function math:rgba/board/rephi_loop