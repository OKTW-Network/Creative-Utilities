item replace entity @s armor.head with minecraft:air
data modify storage cu:item replaceitem.input set from storage cu:item replaceitem._return.armorHead
function cu:item/replaceitem/_data_temp_storage
execute in cu:simulation run loot replace entity @s armor.head mine 0 1 0 minecraft:air[custom_data={"cu:dummy":"shulker_box_contents"}]
