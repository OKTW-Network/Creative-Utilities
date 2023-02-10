item replace entity @s armor.feet with minecraft:air
data modify storage cu:item replaceitem.input set from storage cu:item replaceitem._return.armorFeet
function cu:item/replaceitem/_data_temp_storage
execute in cu:data_temp run loot replace entity @s armor.feet mine 0 1 0 minecraft:air{contentOnly:1b}
