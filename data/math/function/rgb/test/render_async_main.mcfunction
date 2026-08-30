#math:rgb/test/render_async_main
# math:rgb/test/render_async_start异步调用

execute if score test_n int >= n int run return fail
scoreboard players set @s killtime 10

scoreboard players set loop int 1000
execute if score loop int matches 1.. positioned 0.0 0.0 0.0 run function math:rgb/test/render_loop