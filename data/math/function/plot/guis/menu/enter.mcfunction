#math:plot/guis/menu/enter

function iframe:player_space/_get
data modify storage iframe:io player.last_slot set from entity @s SelectedItemSlot
function iframe:player_space/_store
execute unless data storage iframe:io player.cache_inv run function iframe:_inv
function math:plot/guis/menu/items