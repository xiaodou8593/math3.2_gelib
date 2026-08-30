#math:plot/refresh_killtime
# math:plot/main调用

data modify entity @s Thrower set from storage math:io result[0]
execute on origin run scoreboard players set @s killtime 10

data remove storage math:io result[0]
execute if data storage math:io result[0] run function math:plot/refresh_killtime