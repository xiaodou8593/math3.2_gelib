#math:particle/_new_macro
# 宏参数生成
# 输入macro {render_command:""}
# 输入执行位置
# 输出 @e[tag=result,limit=1]

$data modify storage math:io input set value {render_command:"$(render_command)"}
function math:particle/_new