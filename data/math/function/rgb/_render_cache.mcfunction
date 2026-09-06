#math:rgb/_render_cache
# 使用缓存数据渲染例子
# 输入storage math:io xyz
# 输入storage math:io rgb_list
# 输入storage math:io duration
# 传入世界实体为执行者

data modify entity @s Pos set from storage math:io xyz
execute at @s run function math:rgb/render_command with storage math:io {}