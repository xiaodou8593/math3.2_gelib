#math:plot/_upload_coords_as
# 上传坐标数据
# 输入storage math:io input
# 传入实例为执行者

function math:plot/_get
data modify storage math:io plot_coords append from storage math:io input[]
function math:plot/_store