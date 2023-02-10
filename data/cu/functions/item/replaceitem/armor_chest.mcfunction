function cu:item/replaceitem/_return/store/armor_head

item replace entity @s armor.chest with minecraft:air
function cu:item/replaceitem/_data_temp_storage
execute in cu:data_temp run loot replace entity @s armor.chest mine 0 1 0 minecraft:air{contentOnly:1b}

function cu:item/replaceitem/_return/armor_head

function cu:item/replaceitem/_stopsound

data remove storage cu:item replaceitem.input
