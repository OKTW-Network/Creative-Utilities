data modify storage cu:get item set value []
function cu:get/hand_off
data remove storage cu:replaceitem return
execute if data storage cu:get item[0] run data modify storage cu:replaceitem return set from storage cu:get item[0]

execute in cu:data_temp run data modify block 0 1 0 Items set value []
execute in cu:data_temp run data modify block 0 1 0 Items prepend from storage cu:replaceitem item
execute in cu:data_temp run loot replace entity @s weapon.mainhand mine 0 1 0 minecraft:air{contentOnly:1b}

execute if data storage cu:replaceitem return run data modify storage cu:replaceitem item set from storage cu:replaceitem return
execute if data storage cu:replaceitem return run function cu:replaceitem/hand_off
