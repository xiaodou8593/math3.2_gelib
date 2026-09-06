#math:r_cube/_print_as
# 打印实例数据

tellraw @a ["math:r_cube as: ", "{"]
tellraw @a ["    ", {"score":{"name":"@s", "objective":"a"}}, ","]
tellraw @a ["    ", {"score":{"name":"@s", "objective":"r"}}, ","]
tellraw @a ["    ", "center: ", "[", {"score":{"name":"@s", "objective":"x"}}, ", " ,{"score":{"name":"@s", "objective":"y"}}, ", " ,{"score":{"name":"@s", "objective":"z"}}, "]"]
tellraw @a "}"