#math:r_cube/_print
# 打印临时对象数据

tellraw @a ["math:r_cube: ", "{"]
tellraw @a ["    ", {"score":{"name":"a", "objective":"int"}}, ","]
tellraw @a ["    ", {"score":{"name":"r", "objective":"int"}}, ","]
tellraw @a ["    ", "center: ", "[", {"score":{"name":"x", "objective":"int"}}, ", " ,{"score":{"name":"y", "objective":"int"}}, ", " ,{"score":{"name":"z", "objective":"int"}}, "]"]
tellraw @a "}"