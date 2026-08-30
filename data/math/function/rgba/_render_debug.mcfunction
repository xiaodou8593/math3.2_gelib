#math:rgba/_render_debug
# 渲染RGBA颜色
# 输入执行位置
# 输入<inp,int>表示渲染时间
# 需要传入文本展示实体

scoreboard players operation sstemp int = a int
scoreboard players operation sstemp int *= 256 int
scoreboard players operation sstemp int += r int
scoreboard players operation sstemp int *= 256 int
scoreboard players operation sstemp int += g int
scoreboard players operation sstemp int *= 256 int
execute store result storage math:io rgba_render.background int 1 run scoreboard players operation sstemp int += b int

data modify entity @s {} merge from storage math:io rgba_render

scoreboard players operation @s killtime = inp int