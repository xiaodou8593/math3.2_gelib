#math:rgb/_lift
# 将RGB颜色提升至亮度最高

scoreboard players operation sstemp_max int = r int
scoreboard players operation sstemp_max int > g int
scoreboard players operation sstemp_max int > b int
scoreboard players operation sstemp_k int = sstemp_max int
scoreboard players operation sstemp_k int *= 255 int
scoreboard players operation sstemp_max int *= sstemp_max int

scoreboard players operation r int *= sstemp_k int
scoreboard players operation g int *= sstemp_k int
scoreboard players operation b int *= sstemp_k int
scoreboard players operation r int /= sstemp_max int
scoreboard players operation g int /= sstemp_max int
scoreboard players operation b int /= sstemp_max int