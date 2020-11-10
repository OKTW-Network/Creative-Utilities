function cu:replaceitem/return/data_get-armor_set
function cu:replaceitem/return/data_get-hand_off

execute if data storage cu:replaceitem item.Slot run data remove storage cu:replaceitem item.Slot
execute in cu:data_temp run data modify block 0 1 0 Items set value []
execute in cu:data_temp run data modify block 0 1 0 Items prepend from storage cu:replaceitem item
execute in cu:data_temp run loot replace entity @s weapon.mainhand mine 0 1 0 minecraft:air{contentOnly:1b}

execute if data storage cu:replaceitem return.handOff run function cu:replaceitem/return/hand_off
function cu:replaceitem/return/armor_set
