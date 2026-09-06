#math:particle/set_operation
# math:particle/_new调用

function marker_control:data/_get
data modify storage marker_control:io result.tick_func set value "math:particle/main"
function marker_control:data/_store
tag @s add entity_ticked