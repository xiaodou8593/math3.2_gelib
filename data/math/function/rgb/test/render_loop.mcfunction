#math:rgb/test/render_loop
# math:rgb/test/render_async_main调用

data modify storage math:io test_command set from storage math:io test_commands[0]
function math:rgb/test/run_command with storage math:io {}

data modify storage math:io test_commands append from storage math:io test_commands[0]
data remove storage math:io test_commands[0]

scoreboard players remove loop int 1
scoreboard players add test_n int 1
execute if score loop int matches 1.. if score test_n int < n int run function math:rgb/test/render_loop