#math:box/_print
# 打印临时对象数据

tellraw @a ["math_box: ", "{"]
tellraw @a ["    ", "center: ", "[", {"score":{"name":"x", "objective":"int"}}, ", " ,{"score":{"name":"y", "objective":"int"}}, ", " ,{"score":{"name":"z", "objective":"int"}}, "]", ","]
tellraw @a ["    ", "size: ", "[", {"score":{"name":"d", "objective":"int"}}, ", " ,{"score":{"name":"h", "objective":"int"}}, ", " ,{"score":{"name":"l", "objective":"int"}}, "]"]
tellraw @a "}"