#math:rgb/init
# math:_init_ge调用

scoreboard objectives add r dummy
scoreboard objectives add g dummy
scoreboard objectives add b dummy

scoreboard players set -510 int -510
scoreboard players set 255 int 255
scoreboard players set 510 int 510
scoreboard players set 65536 int 65536

data modify storage math:io rgb_list set value [0.0f,0.0f,0.0f]