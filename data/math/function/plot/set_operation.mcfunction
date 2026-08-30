#math:plot/set_operation
# math:plot/_new调用

function math:plot/_get
function math:plot/_update_display

function marker_control:data/_get
data modify storage marker_control:io result.tick_func set value "math:plot/main"
function marker_control:data/_store
tag @s add entity_ticked

tag @e[tag=result] remove result
tag @s add result