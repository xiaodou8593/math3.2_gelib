#math:visual_plane/_set_display
# discarded
# 更新平面实体对象的展示实体渲染，无插值动画
# 输入平面实体对象为执行者

data modify storage math:io plane_render merge value {interpolation_duration:0,teleport_duration:0}
data remove storage math:io plane_render.start_interpolation
# 2facing算法计算四元数
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get @s nvec_x
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players get @s nvec_y
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get @s nvec_z
data modify entity @s Pos set from storage math:io xyz
rotate @s 0.0 0.0
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~
execute store result entity @s Rotation[0] float -0.0001 run data get entity @s Rotation[0] 5000
execute at @s rotated ~ 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score sstemp_c int run data get storage math:io xyz[2] 10000
execute store result score sstemp_s int run data get storage math:io xyz[0] 10000
execute store result entity @s Rotation[0] float -0.0001 run data get entity @s Rotation[1] 5000
execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score sstemp_w int run data get storage math:io xyz[2] 10000
execute store result score sstemp_z int run data get storage math:io xyz[0] 10000
scoreboard players operation sstemp_x int = sstemp_z int
scoreboard players operation sstemp_y int = sstemp_w int
scoreboard players operation sstemp_x int *= sstemp_c int
scoreboard players operation sstemp_y int *= sstemp_s int
scoreboard players operation sstemp_z int *= sstemp_s int
scoreboard players operation sstemp_w int *= sstemp_c int
execute store result storage math:io xyzw[0] float 0.0001 run scoreboard players operation sstemp_x int /= 10000 int
execute store result storage math:io xyzw[1] float 0.0001 run scoreboard players operation sstemp_y int /= -10000 int
execute store result storage math:io xyzw[2] float 0.0001 run scoreboard players operation sstemp_z int /= 10000 int
execute store result storage math:io xyzw[3] float 0.0001 run scoreboard players operation sstemp_w int /= 10000 int
data modify storage math:io plane_render.transformation.left_rotation set from storage math:io xyzw

# 计算偏移量
execute store result score sstempxw int store result score sstempxz int run scoreboard players operation sstempx2 int = sstemp_x int
execute store result score sstempzw int run scoreboard players operation sstempz2 int = sstemp_z int
execute store result score sstempyw int run scoreboard players operation sstempy2 int = sstemp_y int
scoreboard players operation sstempw2 int = sstemp_w int
scoreboard players operation sstempxw int *= sstemp_w int
scoreboard players operation sstempxz int *= sstemp_z int
scoreboard players operation sstempzw int *= sstemp_w int
scoreboard players operation sstempyw int *= sstemp_w int
scoreboard players operation sstempx2 int *= sstempx2 int
scoreboard players operation sstempz2 int *= sstempz2 int
scoreboard players operation sstempw2 int *= sstempw2 int
scoreboard players operation sstempy2 int *= sstempy2 int
scoreboard players operation sstemp_jy int = sstemp_y int
scoreboard players operation sstemp_jy int *= sstemp_y int
scoreboard players operation sstemp_jy int += sstempw2 int
scoreboard players operation sstemp_jy int -= sstempx2 int
scoreboard players operation sstemp_jy int -= sstempz2 int
scoreboard players operation sstemp_jx int = sstemp_x int
scoreboard players operation sstemp_jx int *= sstemp_y int
scoreboard players operation sstemp_jx int -= sstempzw int
scoreboard players operation sstemp_jx int *= 2 int
scoreboard players operation sstemp_jz int = sstemp_y int
scoreboard players operation sstemp_jz int *= sstemp_z int
scoreboard players operation sstemp_jz int += sstempxw int
scoreboard players operation sstemp_jz int *= 2 int
scoreboard players operation sstemp_ix int = sstempx2 int
scoreboard players operation sstemp_ix int += sstempw2 int
scoreboard players operation sstemp_ix int -= sstempy2 int
scoreboard players operation sstemp_ix int -= sstempz2 int
scoreboard players operation sstemp_iz int = sstempxz int
scoreboard players operation sstemp_iz int -= sstempyw int
scoreboard players operation sstemp_iz int *= 2 int
scoreboard players set sstemp_div int 200000000
scoreboard players operation sstemp_div int /= @s scale_v
scoreboard players operation sstemp_jx int /= sstemp_div int
scoreboard players operation sstemp_jy int /= sstemp_div int
scoreboard players operation sstemp_jz int /= sstemp_div int
scoreboard players set sstemp_div int 1000000000
scoreboard players operation sstemp_div int /= @s scale_u
scoreboard players operation sstemp_ix int /= sstemp_div int
scoreboard players operation sstemp_iy int /= sstemp_div int
scoreboard players operation sstemp_iz int /= sstemp_div int
execute store result storage math:io translation[0] float -0.0001 run scoreboard players operation sstemp_jx int += sstemp_ix int
execute store result storage math:io translation[1] float -0.0001 run scoreboard players operation sstemp_jy int += sstemp_iy int
execute store result storage math:io translation[2] float -0.0001 run scoreboard players operation sstemp_jz int += sstemp_iz int
data modify storage math:io plane_render.transformation.translation set from storage math:io translation

# 计算伸缩量
data modify storage math:io scale set value [0.0f,0.0f,1.0f]
scoreboard players set sstemp_x int 8
execute store result storage math:io scale[0] float 0.0001 run scoreboard players operation sstemp_x int *= @s scale_u
scoreboard players set sstemp_x int 4
execute store result storage math:io scale[1] float 0.0001 run scoreboard players operation sstemp_x int *= @s scale_v
data modify storage math:io plane_render.transformation.scale set from storage math:io scale

# 计算颜色
scoreboard players operation sstemp int = @s a
scoreboard players operation sstemp int *= 256 int
scoreboard players operation sstemp int += @s r
scoreboard players operation sstemp int *= 256 int
scoreboard players operation sstemp int += @s g
scoreboard players operation sstemp int *= 256 int
execute store result storage math:io plane_render.background int 1 run scoreboard players operation sstemp int += @s b

# 同步坐标
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get @s x
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players get @s y
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get @s z
data modify entity @s Pos set from storage math:io xyz

# 同步NBT
data modify entity @s {} merge from storage math:io plane_render
data modify storage math:io xyzw append from storage math:io xyzw[0]
data modify storage math:io xyzw append from storage math:io xyzw[1]
data remove storage math:io xyzw[0]
data remove storage math:io xyzw[0]
execute store result storage math:io xyzw[0] float 0.0001 run data get storage math:io xyzw[0] -10000
execute store result storage math:io xyzw[3] float 0.0001 run data get storage math:io xyzw[3] -10000
data modify storage math:io plane_render.transformation.left_rotation set from storage math:io xyzw
scoreboard players operation sstemp_jx int -= sstemp_ix int
scoreboard players operation sstemp_jy int -= sstemp_iy int
scoreboard players operation sstemp_jz int -= sstemp_iz int
execute store result storage math:io translation[0] float -0.0001 run scoreboard players operation sstemp_jx int -= sstemp_ix int
execute store result storage math:io translation[1] float -0.0001 run scoreboard players operation sstemp_jy int -= sstemp_iy int
execute store result storage math:io translation[2] float -0.0001 run scoreboard players operation sstemp_jz int -= sstemp_iz int
data modify storage math:io plane_render.transformation.translation set from storage math:io translation
execute on passengers run data modify entity @s {} merge from storage math:io plane_render