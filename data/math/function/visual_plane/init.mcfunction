#math:visual_plane/init
# math:_init_ge调用

scoreboard objectives add r dummy
scoreboard objectives add g dummy
scoreboard objectives add b dummy
scoreboard objectives add a dummy
scoreboard objectives add scale_u dummy
scoreboard objectives add scale_v dummy

data modify storage math:io plane_render set value {interpolation_duration:1,teleport_duration:1,start_interpolation:0,Rotation:[0.0f,0.0f],brightness:{sky:15,block:15},background:-2147483648,text:" ",transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,0.5f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[-0.0125f,-0.0625f,0.0f]}}

function math:visual_plane/_class