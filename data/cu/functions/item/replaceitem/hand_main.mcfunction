function cu:item/replaceitem/_return/store/armor_set
function cu:item/replaceitem/_return/store/hand_off

item replace entity @s weapon.mainhand with minecraft:air
function cu:item/replaceitem/_data_temp_storage
execute in cu:data_temp run loot replace entity @s weapon.mainhand mine 0 1 0 minecraft:air{contentOnly:1b}

execute if data storage cu:item replaceitem._return.handOff run function cu:item/replaceitem/_return/hand_off
function cu:item/replaceitem/_return/armor_set

function cu:item/replaceitem/_stopsound

data remove storage cu:item replaceitem.input
