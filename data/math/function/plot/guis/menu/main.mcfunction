#math:plot/guis/menu/main

# 退出GUI
function iframe:player_space/_get
# 如果没有记录uuid则退出
execute unless data storage iframe:io player.plot_uuid run return run function math:plot/guis/menu/exit
# 如果查询不到对应uuid也退出
data modify entity 0-0-0-0-1 Thrower set from storage iframe:io player.plot_uuid
execute as 0-0-0-0-1 on origin if entity @s[tag=math_plot] run tag @s add tmp
execute unless entity @e[tag=tmp,limit=1] run return run function math:plot/guis/menu/exit
data remove storage iframe:io player.plot_uuid
# 获取last_slot
execute store result score last_slot int run data get storage iframe:io player.last_slot
function iframe:player_space/_store

data modify storage iframe:io inv set from entity @s Inventory
data modify storage iframe:io sel set value {}
data modify storage iframe:io sel set from entity @s SelectedItem
execute store result score slot int run data get entity @s SelectedItemSlot

# 检测GUI发生变动
scoreboard players set update_gui int 0
execute unless data storage iframe:io inv[{Slot:0b}].components."minecraft:custom_data"{button:0b} run scoreboard players set update_gui int 1
execute unless data storage iframe:io inv[{Slot:1b}].components."minecraft:custom_data"{button:1b} run scoreboard players set update_gui int 1
execute unless items entity @s container.* minecraft:clay_ball[minecraft:custom_data~{button:2b}] unless items entity @s weapon.* minecraft:clay_ball[minecraft:custom_data~{button:2b}] run scoreboard players set update_gui int 1
execute if items entity @s weapon.mainhand minecraft:clay_ball[minecraft:custom_data~{button:2b}] unless score slot int matches 2 run scoreboard players set update_gui int 1
execute unless items entity @s container.* minecraft:clay_ball[minecraft:custom_data~{button:3b}] unless items entity @s weapon.* minecraft:clay_ball[minecraft:custom_data~{button:3b}] run scoreboard players set update_gui int 1
execute if items entity @s weapon.mainhand minecraft:clay_ball[minecraft:custom_data~{button:3b}] unless score slot int matches 3 run scoreboard players set update_gui int 1
execute unless items entity @s container.* minecraft:clay_ball[minecraft:custom_data~{button:4b}] unless items entity @s weapon.* minecraft:clay_ball[minecraft:custom_data~{button:4b}] run scoreboard players set update_gui int 1
execute if items entity @s weapon.mainhand minecraft:clay_ball[minecraft:custom_data~{button:4b}] unless score slot int matches 4 run scoreboard players set update_gui int 1


# 重置按钮
execute if score @s iframe_crc_state matches 1 \
	if data storage iframe:io sel.components."minecraft:custom_data"{button:0b} \
	run function math:plot/guis/menu/reset_button

# 拖动按钮开始
execute if score @s iframe_crc_state matches 2 \
	if data storage iframe:io sel.components."minecraft:custom_data"{button:1b} \
	run function math:plot/guis/menu/start_dragging

# 拖动按钮长按
execute if score @s iframe_crc_state matches 3 \
	if data storage iframe:io sel.components."minecraft:custom_data"{button:1b} \
	run function math:plot/guis/menu/dragging

# 滚轮缩放
execute if items entity @s weapon.offhand \
	minecraft:clay_ball[minecraft:custom_data~{button:2b}] \
	run function math:plot/guis/menu/rolling

# u轴滚轮缩放
execute if items entity @s weapon.offhand \
	minecraft:clay_ball[minecraft:custom_data~{button:3b}] \
	run function math:plot/guis/menu/rolling_u

# v轴滚轮缩放
execute if items entity @s weapon.offhand \
	minecraft:clay_ball[minecraft:custom_data~{button:4b}] \
	run function math:plot/guis/menu/rolling_v

execute if score update_gui int matches 1 run function math:plot/guis/menu/items

# 更新last_slot
function iframe:player_space/_get
execute store result storage iframe:io player.last_slot int 1 run scoreboard players get slot int
function iframe:player_space/_store

tag @e[tag=tmp] remove tmp