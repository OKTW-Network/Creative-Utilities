function cu:item/replaceitem/return/data_get-armor_set
function cu:item/replaceitem/return/data_get-hand_off

execute if data storage cu:item input.Slot run data remove storage cu:item input.Slot
execute in cu:data_temp run data modify block 0 1 0 Items set value []
execute in cu:data_temp run data modify block 0 1 0 Items prepend from storage cu:item input
execute in cu:data_temp run loot replace entity @s weapon.mainhand mine 0 1 0 minecraft:air{contentOnly:1b}
item modify entity @s weapon.mainhand cu:count_1
item modify entity @s weapon.mainhand cu:count_-1

execute if data storage cu:item return.handOff run function cu:item/replaceitem/return/hand_off
function cu:item/replaceitem/return/armor_set
