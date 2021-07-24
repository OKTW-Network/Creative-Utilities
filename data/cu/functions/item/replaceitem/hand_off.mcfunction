function cu:item/replaceitem/return/data_get-armor_set

item replace entity @s weapon.offhand with minecraft:air
execute if data storage cu:item input.Slot run data remove storage cu:item input.Slot
execute in cu:data_temp run data modify block 0 1 0 Items set value []
execute in cu:data_temp run data modify block 0 1 0 Items prepend from storage cu:item input
execute in cu:data_temp run loot replace entity @s weapon.offhand mine 0 1 0 minecraft:air{contentOnly:1b}

function cu:item/replaceitem/return/armor_set
