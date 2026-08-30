#math:plane/_if_kvec
# 计算射线与平面相交
# 输入射线起点vec{<vec_x,int,1w>,<vec_y,int,1w>,<vec_z,int,1w>}
# 输入单位向量kvec{<kvec_x,int,1w>,<kvec_y,int,1w>,<kvec_z,int,1w>}
# 输出<res,int>, 是否相交?1:0
# 输出<sres,int,1w>, 代表kvec需要缩放多少倍到达交点
# 输出交点相对坐标为fvec{<fvec_x,int,1w>,<fvec_y,int,1w>,<fvec_z,int,1w>}
# 需要传入世界实体为执行者

scoreboard players operation sres int = x int
scoreboard players operation sres int -= vec_x int
scoreboard players operation sres int /= 10 int
scoreboard players operation sres int *= nvec_x int
scoreboard players operation sstemp_0 int = y int
scoreboard players operation sstemp_0 int -= vec_y int
scoreboard players operation sstemp_0 int /= 10 int
scoreboard players operation sstemp_0 int *= nvec_y int
scoreboard players operation sres int += sstemp_0 int
scoreboard players operation sstemp_0 int = z int
scoreboard players operation sstemp_0 int -= vec_z int
scoreboard players operation sstemp_0 int /= 10 int
scoreboard players operation sstemp_0 int *= nvec_z int
scoreboard players operation sres int += sstemp_0 int

scoreboard players operation sstemp_div int = kvec_x int
scoreboard players operation sstemp_div int *= nvec_x int
scoreboard players operation sstemp_0 int = kvec_y int
scoreboard players operation sstemp_0 int *= nvec_y int
scoreboard players operation sstemp_div int += sstemp_0 int
scoreboard players operation sstemp_0 int = kvec_z int
scoreboard players operation sstemp_0 int *= nvec_z int
scoreboard players operation sstemp_div int += sstemp_0 int
scoreboard players operation sstemp_div int /= 10000 int

scoreboard players operation sres int /= sstemp_div int

scoreboard players set res int 0
execute if score sres int matches -128000..128000 run function math:plane/cross_point