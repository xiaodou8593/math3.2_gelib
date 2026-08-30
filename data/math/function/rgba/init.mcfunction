#math:rgba/init
# math:_init_ge调用

scoreboard players set 256 int 256

data modify storage math:io rgba_render set value {brightness:{sky:15,block:15},Tags:["math_rgba"],CustomName:'"math_rgba"',background:-2147483648,text:'" "',billboard:"center",transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,0.5f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[-0.0125f,-0.0625f,0.0f]}}

data modify storage math:io rgba_board set value [[I;25, 45, 180, 255],[I;40, 85, 200, 255],[I;60, 120, 220, 255],[I;80, 155, 235, 255],[I;100, 180, 240, 255],[I;120, 195, 230, 255],[I;140, 210, 210, 255],[I;160, 225, 185, 255],[I;140, 230, 150, 255],[I;120, 220, 120, 255],[I;180, 240, 100, 255],[I;220, 240, 80, 255],[I;240, 220, 60, 255],[I;245, 180, 50, 255],[I;230, 120, 40, 255],[I;210, 60, 30, 255]]
scoreboard players set rgba_board_phi int 0