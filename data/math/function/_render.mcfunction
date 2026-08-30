#math:_render
# 输入storage math:io render_command
# 输入执行位置
# 需要以世界实体为执行者

tp @s ~ ~ ~
execute at @s run function math:render_run with storage math:io {}