#math:rgba/_to_int
# 四分量转化为32位整数形式
# 输出<res,int>

scoreboard players operation sstemp int = a int
scoreboard players operation sstemp int *= 256 int
scoreboard players operation sstemp int += r int
scoreboard players operation sstemp int *= 256 int
scoreboard players operation sstemp int += g int
scoreboard players operation sstemp int *= 256 int
scoreboard players operation sstemp int += b int