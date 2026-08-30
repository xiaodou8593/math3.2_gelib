#math:line/test/align
# math:line/test/align_tick调用

data modify storage math:io xyz set value [0.0d, 0.0d, 0.0d]

scoreboard players set loop int 100000
execute if score x int matches ..2147483646 run function math:line/test/align_loop

tellraw @a "---"
tellraw @a ["x: ", {"score":{"name":"x","objective":"int"}}]
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]

tp @s 0 0 0