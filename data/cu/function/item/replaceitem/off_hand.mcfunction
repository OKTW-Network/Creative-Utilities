function cu:item/replaceitem/_return/store/armor_set

item replace entity @s weapon.offhand with minecraft:air
function cu:item/replaceitem/_data_temp_storage
execute in cu:data_temp run loot replace entity @s weapon.offhand mine 0 1 0 minecraft:air[custom_data={"cu:dummy":"shulker_box_contents"}]

function cu:item/replaceitem/_return/armor_set

function cu:item/replaceitem/_stopsound

data remove storage cu:item replaceitem.input
