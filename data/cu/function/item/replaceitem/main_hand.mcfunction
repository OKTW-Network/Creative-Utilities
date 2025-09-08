function cu:item/replaceitem/_return/store/armor_set
function cu:item/replaceitem/_return/store/off_hand

item replace entity @s weapon.mainhand with minecraft:air
function cu:item/replaceitem/_data_temp_storage
execute in cu:simulation run loot replace entity @s weapon.mainhand mine 0 1 0 minecraft:air[custom_data={"cu:dummy":"shulker_box_contents"}]

execute if data storage cu:item replaceitem._return.offHand run function cu:item/replaceitem/_return/off_hand
function cu:item/replaceitem/_return/armor_set

function cu:item/replaceitem/_stopsound

data remove storage cu:item replaceitem.input
