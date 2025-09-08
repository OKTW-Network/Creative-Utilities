item replace entity @s weapon.offhand with minecraft:air
data modify storage cu:item replaceitem.input set from storage cu:item replaceitem._return.offHand
function cu:item/replaceitem/_data_temp_storage
execute in cu:simulation run loot replace entity @s weapon.offhand mine 0 1 0 minecraft:air[custom_data={"cu:dummy":"shulker_box_contents"}]
