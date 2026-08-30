#math:plot/guis/menu/items

clear @s

# 填充GUI物品
item replace entity @s hotbar.0 with minecraft:clay_ball[\
	minecraft:item_model="minecraft:ender_eye",\
	minecraft:consumable={consume_seconds:1024.0f},\
	minecraft:custom_name={\
		text:"reset scale and shift",\
		color:"red"\
	},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:0b\
	}\
]

item replace entity @s hotbar.1 with minecraft:clay_ball[\
	minecraft:item_model="minecraft:arrow",\
	minecraft:consumable={consume_seconds:1024.0f},\
	minecraft:custom_name={\
		text:"set shift",\
		color:"red"\
	},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:1b\
	}\
]

item replace entity @s hotbar.2 with minecraft:clay_ball[\
	minecraft:item_model="minecraft:comparator",\
	minecraft:custom_name={\
		text:"roll scale",\
		color:"red"\
	},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:2b\
	}\
]

item replace entity @s hotbar.3 with minecraft:clay_ball[\
	minecraft:item_model="minecraft:red_sandstone_wall",\
	minecraft:custom_name={\
		text:"set scale_u",\
		color:"red"\
	},\
	minecraft:consumable={consume_seconds:1024.0f},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:3b\
	}\
]

item replace entity @s hotbar.4 with minecraft:clay_ball[\
	minecraft:item_model="minecraft:sandstone_wall",\
	minecraft:custom_name={\
		text:"set scale_v",\
		color:"red"\
	},\
	minecraft:consumable={consume_seconds:1024.0f},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:4b\
	}\
]